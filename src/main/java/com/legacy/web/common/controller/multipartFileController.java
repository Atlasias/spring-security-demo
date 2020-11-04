package com.legacy.web.common.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Iterator;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.legacy.web.common.domain.FileDomain;
import com.legacy.web.common.domain.MultipleFileDomain;
import com.legacy.web.common.service.FileService;

@Controller
//@RequestMapping(value = "/examples/multipart")
public class multipartFileController {

	private final Logger logger = LoggerFactory.getLogger(multipartFileController.class);
	
	@Value("${file.storage-path.inbound}")
	private String uploadPath;
	
	@Value("${file.storage-path.outbound}")
	private String downloadPath;
	
	@Autowired
	private FileService fileService;


	@RequestMapping(value = "/examples/multipart/multipartFilePage", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String multipartFilePage(HttpServletRequest request, HttpServletResponse response) {
		logger.info("multipartFilePage! ");
		return "examples/multipartfile/fileSupport";
	}

	/**
	 * 단일 파일 객체를 repository객체에 맞는 항목으로 받은 경우
	 * */
	@RequestMapping(value = "/examples/multipart/singleUpload", method = {RequestMethod.POST}/* , produces = MediaType.TEXT_HTML_VALUE */)
	@ResponseBody
	public Model singleFileUpload(FileDomain fileDomain, Model model) throws Exception {
		fileService.saveUploadedFile(fileDomain);
		
		return model;
	}

	/**
	 * 다중 파일 객체를 repository객체에 맞는 항목으로 받은 경우
	 * */
	@RequestMapping(value = "/examples/multipart/multipleUpload", method = {RequestMethod.POST}/* , produces = MediaType.TEXT_HTML_VALUE */)
	@ResponseBody
	public Model multipleFileUpload(HttpServletRequest request, HttpServletResponse response, MultipleFileDomain multiplefileDomain, Model model) throws Exception {
		fileService.saveUploadedFileList(multiplefileDomain);
		return model;
	}

	/**
	 * MultipartHttpServletRequest를 통해 받은 파일 처리(no service)
	 * */
	@RequestMapping(value = "/examples/multipart/pureMultipleUpload", method = {RequestMethod.POST}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public Model pureMultipleFileUpload(MultipartHttpServletRequest multiRequest, Model model) throws Exception {
		Iterator<String> fileNames = multiRequest.getFileNames();
	
		while(fileNames.hasNext()) {
			
			String fileName = fileNames.next();
			
			MultipartFile multipartFile = multiRequest.getFile(fileName);
			
			try {
				multipartFile.transferTo(new File(uploadPath+File.pathSeparator+fileName));
			}catch(Exception e) {
				
				logger.error(e.getMessage());
			}
		}
		
		return model;
	}
	
	@RequestMapping(value = "/examples/multipart/singleDownload/{fileId}", method = {RequestMethod.POST}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public HttpServletResponse singleFileDownload(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileId") String fileId) throws IOException {

		FileDomain fileDomain = fileService.selectFileInfoById(fileId);
		File targetFile = new File(uploadPath+ fileDomain.getFileReplacedNm());
        
        //파일 1차 확인
        if(!targetFile.exists()) {
        	targetFile = new File(uploadPath + fileDomain.getFileReplacedNm());
        }
        
        //파일 최종 확인
        if(!targetFile.exists()) {
                throw new FileNotFoundException();
        }
               
        ServletOutputStream outStream = null;
        FileInputStream inputStream = null;
               
        try {
                outStream = response.getOutputStream();
                inputStream = new FileInputStream(targetFile);               
         
                //Setting Resqponse Header
                response.setContentType("application/octet-stream");
                response.setHeader("Content-Transfer-Encoding", "binary");
                response.setHeader("Content-Disposition", "attachment;filename=\""+ URLEncoder.encode(targetFile.getName(), "utf-8") + "\";");
                      
                //Writing InputStream to OutputStream
                byte[] outByte = new byte[4096];
                while(inputStream.read(outByte, 0, 4096) != -1)
                {
                  outStream.write(outByte, 0, 4096);
                }
                
                //save fileInfo to downloaded path
                fileService.saveFileDownLoadHistory(fileDomain);
                
        } catch (Exception e) {
                throw new IOException();
        } finally {
                inputStream.close();
                outStream.flush();
                outStream.close();
        }
        
        return response;
	}
	
}
