package com.legacy.web.login.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.legacy.base.util.CamelCaseMap;

@Repository
public interface LoginMapper {

	List<CamelCaseMap> findMenuList();
	
	List<CamelCaseMap> findMenuListByUser(String userId);

	CamelCaseMap selectAuthUserInfo(String userId);

	List<CamelCaseMap> selectuserRoles(String userId);
	
}
