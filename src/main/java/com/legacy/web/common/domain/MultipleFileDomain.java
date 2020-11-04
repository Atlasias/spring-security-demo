package com.legacy.web.common.domain;

import java.util.List;

import com.legacy.base.util.Domain;

public class MultipleFileDomain extends Domain {
	private String multipleFileInfo;
	private List<FileDomain> fileList;
	
	//file Object
	//@SerializationExclude 
	//private MultipartFile multipartFile;

	public String getMultipleFileInfo() {
		return multipleFileInfo;
	}

	public void setMultipleFileInfo(String multipleFileInfo) {
		this.multipleFileInfo = multipleFileInfo;
	}

	public List<FileDomain> getFileDomainList() {
		return fileList;
	}

	public void setFileDomainList(List<FileDomain> fileList) {
		this.fileList = fileList;
	}
}