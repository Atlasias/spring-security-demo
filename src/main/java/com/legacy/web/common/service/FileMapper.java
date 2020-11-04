package com.legacy.web.common.service;

import org.springframework.stereotype.Repository;

import com.legacy.web.common.domain.FileDomain;

@Repository
public interface FileMapper {

	int saveFileHistory(FileDomain fileDomain);

	int saveFile(FileDomain fileDomain);

	int deleteFile(FileDomain fileDomain);

	FileDomain selectFileInfoById(String fileId);
	
}
