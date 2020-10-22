package com.legacy.web.login.service;

import java.util.List;
import java.util.Map;

import com.legacy.base.util.CamelCaseMap;
import com.legacy.web.login.domain.SessionUser;

public interface LoginService {

	/**
	 * 로그인 실패 횟수 증가
	 * */
    public int updateLoginFailedCnt(String userId);
    
    /**
     * 로그인 이력 생성
     * */
    public int insertLoginHistory(Map<String, Object> map);

    /**
     * 비밀번호 변경
     * */
    public int updatePassword(SessionUser user);
    
    /**
     * 비밀번호 검사
     * */
    public String checkPassword(Map<String, Object> map);
    
    /**
     * 사용자 정보 조회
     * */
	public CamelCaseMap selectAuthUserInfo(String id);

	/**
	 * 사용자가 가진 권한 목록 조회
	 * */
	public List<CamelCaseMap> selectuserRoles(String id); 
	
	/**
	 * 사용자 상세정보 조회(세션획득)
	 * */
	public SessionUser selectUserInfo(String userId);
    
}
