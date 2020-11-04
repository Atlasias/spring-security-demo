package com.legacy.web.common.service.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.legacy.web.common.domain.FileDomain;
import com.legacy.web.common.domain.MultipleFileDomain;
import com.legacy.web.common.service.FileMapper;
import com.legacy.web.common.service.FileService;

@Service
@Transactional
public class FileServiceImpl implements FileService {
	
	private final Logger logger = LoggerFactory.getLogger(FileServiceImpl.class);
	
	@Autowired
	private FileMapper fileMapper;

	@Value("{spring.servlet.multipart.max-file-size}")
	private String maxUploadFileSize;
	
	@Value("${file.storage-path.inbound}")
	private String uploadPath;
	
	@Value("${file.storage-path.outbound}")
	private String downloadPath;
	

	@Override
	public FileDomain selectFileInfoById(String fileId) throws FileNotFoundException {
		
		FileDomain fileDomain = fileMapper.selectFileInfoById(fileId);
		String fileReplacedNm = fileDomain.getFileReplacedNm();
		File file = new File(uploadPath+File.pathSeparator+fileReplacedNm);
		
		if(!file.exists()) {
			throw new FileNotFoundException();
		}
		
		return fileDomain;
	}

	@Override
	public void saveFileDownLoadHistory(FileDomain fileDomain) throws Exception {
		saveFile(fileDomain, downloadPath);
		
	}

	@Override
	public void saveUploadedFile(FileDomain fileDomain) throws Exception {
		saveFile(fileDomain, uploadPath);
		
	}

	@Override
	public void saveUploadedFileList(MultipleFileDomain multiplefileDomain) throws Exception {
		List<FileDomain> fileList = multiplefileDomain.getFileDomainList();
		for(FileDomain fileObj : fileList) {
			
			saveFile(fileObj, uploadPath);
		}
	}
	
	@Override
	public int deleteFile(String fileId) {
		
		int deletedFiles = 0;
		FileDomain fileDomain = fileMapper.selectFileInfoById(fileId);
		String storedFileNm = fileDomain.getFileReplacedNm();
		
		File targetFile = new File(uploadPath+File.pathSeparator+storedFileNm);
		if(targetFile.exists()) {
			targetFile.deleteOnExit();
			deletedFiles = fileMapper.deleteFile(fileDomain);
			
		}
		return deletedFiles;
	}

	@Override
	public int deleteFile(FileDomain fileDomainInfo) {
		
		int deletedFiles = 0;
		FileDomain fileDomain = fileMapper.selectFileInfoById(fileDomainInfo.getFileId());
		String storedFileNm = fileDomain.getFileReplacedNm();
		
		File targetFile = new File(uploadPath+File.pathSeparator+storedFileNm);
		if(targetFile.exists()) {
			targetFile.deleteOnExit();
			deletedFiles = fileMapper.deleteFile(fileDomain);
			
		}
		return deletedFiles;
	}

	@Override
	public int deleteFiles(List<String> fileIdList) {

		int deletedFiles = 0;

		for(String fileId : fileIdList) {
			FileDomain fileDomain = fileMapper.selectFileInfoById(fileId);
			String storedFileNm = fileDomain.getFileReplacedNm();
			
			File targetFile = new File(uploadPath+File.pathSeparator+storedFileNm);
			if(targetFile.exists()) {
				targetFile.deleteOnExit();
				deletedFiles += fileMapper.deleteFile(fileDomain);
			}
		}
		
		return deletedFiles;
	}
	
	@Override
	public void saveFile(FileDomain fileDomain, String savePath) throws Exception {
    	
		logger.debug("=============================SAVING FILE============================");
        
	/*
	 * if(fileDomain.getMultipartFile().getSize() > maxUploadFileSize){ throw new
	 * Exception("file size is too big"); }
	 */
		logger.debug("{}",fileDomain);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.KOREA);
        
        //1. Setting File Name 
        logger.debug("process #1");
        String fileNm = FilenameUtils.getBaseName(fileDomain.getMultipartFile().getOriginalFilename());
        String extension = FilenameUtils.getExtension(fileDomain.getMultipartFile().getOriginalFilename());
        String convFileNm ="";
        
        logger.debug("process #2");
        StringBuilder builder = new StringBuilder();
        
        builder.append(fileNm)
        .append("_").append(sdf.format(new Date()))
        .append(".")
        .append(extension);
        convFileNm = builder.toString();

        logger.debug("process #3");
        try{
            //2. Setting Upload Dir 
            File dirFile = new File(savePath);
            FileUtils.forceMkdir(dirFile);
            
            //3. File Upload
            File uploadedFile = new File(savePath, convFileNm);
            fileDomain.getMultipartFile().transferTo(uploadedFile);                                              
            fileDomain.setFileReplacedNm(convFileNm);
            fileDomain.setFileSavedPath(savePath);
            fileDomain.setFileExtnNm(extension);                                
            logger.debug("process #4");
            //4. Record File Upload Data
            fileMapper.saveFile(fileDomain);
           
            logger.debug("process #5");
            //5. Record File Upload Tgt Data            
            fileMapper.saveFileHistory(fileDomain);
            
            logger.debug("================= multipartFile  End ===================");
            
           }catch(Exception e){
        	   logger.error("{}",e.toString());
        	   throw new Exception("failed to transfer multipartfile");
           }finally {
           }
        
        return;
	}
}
