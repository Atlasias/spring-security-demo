package com.legacy.web.common.service;

import java.io.FileNotFoundException;
import java.util.List;

import com.legacy.web.common.domain.FileDomain;
import com.legacy.web.common.domain.MultipleFileDomain;

public interface FileService {
	
	/**
	 * 저장소에 저장된 file을 java File 객체로 받기
	 * @throws FileNotFoundException 
	 * */
	public FileDomain selectFileInfoById(String fileId) throws FileNotFoundException;

	/**
	 * file download 이력 저장 및 다운로드된 파일 저장
	 * */
	public void saveFileDownLoadHistory(FileDomain fileDomain) throws Exception;

	/**
	 * 단일 파일 저장
	 * @throws Exception 
	 * */
	public void saveUploadedFile(FileDomain fileDomain) throws Exception;

	/**
	 * 여러 파일 저장
	 * @throws Exception 
	 * */
	public void saveUploadedFileList(MultipleFileDomain multiplefileDomain) throws Exception;
    
	/**
	 * 파일 삭제
	 * */
	public int deleteFile(String fileId);
    
	/**
	 * 파일 삭제
	 * */
	public int deleteFile(FileDomain fileDomain);
    
	/**
	 * 파일 삭제(multiple)
	 * */
	public int deleteFiles(List<String> fileIdList);

	/**
	 * 파일저장 필수 process
	 * */
	void saveFile(FileDomain fileDomain, String savePath) throws Exception;
    
	
	
}
