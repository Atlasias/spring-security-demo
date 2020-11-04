package com.legacy.web.login.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.legacy.base.util.CamelCaseMap;
import com.legacy.web.login.domain.SessionUser;
import com.legacy.web.login.service.LoginMapper;
import com.legacy.web.login.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public int updateLoginFailedCnt(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertLoginHistory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatePassword(SessionUser user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String checkPassword(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CamelCaseMap selectAuthUserInfo(String id) {
		return loginMapper.selectAuthUserInfo(id);
	}

	@Override
	public List<CamelCaseMap> selectuserRoles(String id) {
		return loginMapper.selectuserRoles(id);
	}
	
	@Override
	public SessionUser selectUserInfo(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
