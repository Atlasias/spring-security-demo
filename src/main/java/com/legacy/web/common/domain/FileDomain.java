package com.legacy.web.common.domain;

import org.springframework.web.multipart.MultipartFile;

import com.legacy.base.util.Domain;
import com.legacy.base.util.SerializationExclude;

public class FileDomain extends Domain {
	private String fileId;//file 고유번호
	private String fileMapId;
	private String fileTpCd;
	private String sortOrd;
	private String fileOriginNm;
	private String fileReplacedNm;
	private String fileExtnNm;
	private String fileSavedPath;
	private String fileUseYn;

	//file Object
	@SerializationExclude 
	private MultipartFile multipartFile;

	public String getFileId() {
		return fileId;
	}

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

	public String getFileMapId() {
		return fileMapId;
	}

	public void setFileMapId(String fileMapId) {
		this.fileMapId = fileMapId;
	}

	public String getFileTpCd() {
		return fileTpCd;
	}

	public void setFileTpCd(String fileTpCd) {
		this.fileTpCd = fileTpCd;
	}

	public String getSortOrd() {
		return sortOrd;
	}

	public void setSortOrd(String sortOrd) {
		this.sortOrd = sortOrd;
	}

	public String getFileOriginNm() {
		return fileOriginNm;
	}

	public void setFileOriginNm(String fileOriginNm) {
		this.fileOriginNm = fileOriginNm;
	}

	public String getFileReplacedNm() {
		return fileReplacedNm;
	}

	public void setFileReplacedNm(String fileReplacedNm) {
		this.fileReplacedNm = fileReplacedNm;
	}

	public String getFileExtnNm() {
		return fileExtnNm;
	}

	public void setFileExtnNm(String fileExtnNm) {
		this.fileExtnNm = fileExtnNm;
	}

	public String getFileSavedPath() {
		return fileSavedPath;
	}

	public void setFileSavedPath(String fileSavedPath) {
		this.fileSavedPath = fileSavedPath;
	}

	public String getFileUseYn() {
		return fileUseYn;
	}

	public void setFileUseYn(String fileUseYn) {
		this.fileUseYn = fileUseYn;
	}

	public MultipartFile getMultipartFile() {
		return multipartFile;
	}

	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}

}