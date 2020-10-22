package com.legacy.base.util;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.legacy.web.login.domain.SecurityUser;
import com.legacy.web.login.domain.SessionUser;

public abstract class SessionUtils {

	final static Logger logger = LoggerFactory.getLogger(SessionUtils.class);
	
	public static SessionUser getSessionUser() {
		HttpSession session = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest().getSession();
		return (SessionUser)session.getAttribute("SessionUser");
	}
	
	public static UserDetails getUserDetails() {
		UserDetails userDetails = null;
		SecurityContext securityContext = SecurityContextHolder.getContext();
		
		if ((securityContext != null) && (securityContext.getAuthentication() != null)) {
			userDetails = (UserDetails)securityContext.getAuthentication().getPrincipal();
		}
		return userDetails;
	}

	public static SecurityUser getJUser() {
		
		Object principal = null;
		SecurityUser suser = null;
		SecurityContext securityContext = SecurityContextHolder.getContext();
		if ((securityContext != null) && (securityContext.getAuthentication() != null)) {
			principal = securityContext.getAuthentication().getPrincipal();
			suser = (SecurityUser) principal;
		}
		return suser;
	}
}
