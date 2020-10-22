package com.legacy.base.authentication.handler;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.legacy.base.authentication.service.SecurityService;
import com.legacy.web.login.domain.SecurityUser;
import com.legacy.web.login.domain.SessionUser;
import com.legacy.web.login.service.LoginService;

@Component
public class MySavedRequestAwareAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

	private final Logger logger = LoggerFactory.getLogger(MySavedRequestAwareAuthenticationSuccessHandler.class);
	private List<String> ignoreRequestCacheUrl;

	private RequestCache requestCache = new HttpSessionRequestCache();

	private int cookieMaxAge = 0;
	final private String IS_SAVE_ID_FIELD = "isSaveId";
	final private String SAVE_USER_NAME_FIELD = "isSavedId";

	@Autowired
	private LoginService service;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {

		logger.debug("Security AuthenticationSuccess!!!");
		logger.debug("authentication info : {}",authentication);
		boolean isRemember = Boolean.parseBoolean(request.getParameter("rememberUser"));
		logger.debug("rememberUser ? : {}",isRemember);
		logger.debug("request : >>>");
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()) {
			String paramName = params.nextElement();
			logger.debug(paramName+":"+request.getParameter(paramName));
			
		}

		SavedRequest savedRequest = requestCache.getRequest(request, response);

		//response.addCookie(createCookie(request, authentication));

		afterProcess(request, response, authentication);

		if (savedRequest == null) {
			super.onAuthenticationSuccess(request, response, authentication);

			return;
		}

		if (isAlwaysUseDefaultTargetUrl() || StringUtils.hasText(request.getParameter(getTargetUrlParameter()))) {
			requestCache.removeRequest(request, response);
			super.onAuthenticationSuccess(request, response, authentication);

			return;
		}

		clearAuthenticationAttributes(request);

		String targetUrl = savedRequest.getRedirectUrl();
		logger.debug("★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★SAVED TARGET URL IS "+targetUrl);
		logger.debug("★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★SAVED DEFAULT TARGET URL IS "+getDefaultTargetUrl());

		if(getIgnoreRequestCacheUrl() != null && getIgnoreRequestCacheUrl().size() > 0) {
			for(String ignoreUrl : getIgnoreRequestCacheUrl()) {
				if(targetUrl.indexOf(ignoreUrl) > -1) {
					logger.debug("Redirecting to DefaultSavedRequest Url: " + targetUrl);
					getRedirectStrategy().sendRedirect(request, response, getDefaultTargetUrl());
					return;
				}
			}
		}

		logger.debug("Redirecting to Target Url: " + targetUrl);
		getRedirectStrategy().sendRedirect(request, response, targetUrl);
		return;
	}



	public void afterProcess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication) {

		logger.debug("afterProcess");

		HttpSession session = request.getSession(false);

		if(session == null) {
			logger.debug("=============session is null=================");
			return;
		}
		//logger.debug("authentication : {}",authentication);
		//logger.debug("authentication.getPrincipal() : {}",authentication.getPrincipal());
		//logger.debug("authentication.getDetails() : {}",authentication.getDetails());

		if (authentication.getPrincipal() instanceof UserDetails) {

			session.invalidate();
			session = request.getSession(true);

			SecurityUser userDetails = (SecurityUser) authentication.getPrincipal();
			SessionUser user = (SessionUser) userDetails.getUserInfo();
			WebAuthenticationDetails authDetails = (WebAuthenticationDetails) authentication.getDetails();

			logger.debug("------------------------------------");     
			logger.debug("---------LOGIN USER INFO------------");     

			logger.debug("authntication principal : {}",authentication.getPrincipal());
			logger.debug("userDetails : {}",userDetails);
			logger.debug("user : {}",user);
			logger.debug("auth details : {}", authDetails);

			logger.debug("------------------------------------");    


			//user.setRemoteIP(details.getSessionId());
			
			
			//user.setRemoteIP(remoteIp);
			//session.setAttribute("SessionUser", user);

			//Zeus 중복로그인 방지 기능 사용을 위한 Setting
			//session.setAttribute("userId", user.getUserId());

			//로그인 실패이력 초기화
			//service.updateInitLoginFailedCnt(user.getUserId());

			//로그인 이력 남기기
			//Map<String, Object> hisMap = new HashMap<String, Object>();
			//hisMap.put("userId", user.getUserId());
			//hisMap.put("remoteIP", user.getRemoteIP());
			//service.insertLoginHistory(hisMap);
		}
	}






	/**
	 * 
	 * 로그인시 id저장을 체크한 경우 쿠키 생성
	 * spring boot security에서 제공하기에 없앰
	 * 
	 * */
	/*
	 * private Cookie createCookie(HttpServletRequest request, Authentication
	 * authentication) { Cookie cookie = null; String isIdSave =
	 * request.getParameter(IS_SAVE_ID_FIELD);
	 * 
	 * if(StringUtils.hasText(isIdSave)) { cookie = new Cookie(SAVE_USER_NAME_FIELD,
	 * ((UserDetails) authentication.getPrincipal()).getUsername());
	 * cookie.setMaxAge(cookieMaxAge); } else { cookie = new
	 * Cookie(SAVE_USER_NAME_FIELD, ""); cookie.setMaxAge(0); }
	 * 
	 * return cookie; }
	 */


	public List<String> getIgnoreRequestCacheUrl() {
		return ignoreRequestCacheUrl;
	}

	public void setIgnoreRequestCacheUrl(List<String> ignoreRequestCacheUrl) {
		this.ignoreRequestCacheUrl = ignoreRequestCacheUrl;
	}

	public void setCookieMaxAge(int cookieMaxAge) {
		this.cookieMaxAge = cookieMaxAge;
	}
}
