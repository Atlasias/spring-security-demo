package com.legacy.web.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/verification/")
public class LoginController {
	private final Logger logger = LoggerFactory.getLogger(LoginController.class);

	//@Autowired
	//private MemberService memberService;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		logger.info("login page!");
		return "verification/login";
	}

	@RequestMapping(value = "logout", method = {RequestMethod.GET, RequestMethod.POST}) 
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * 
		 * if (auth != null){
		 * logger.info("no spring security info... manually processing..."); new
		 * SecurityContextLogoutHandler().logout(request, response, auth); }
		 */
		
	  return "verification/logout"; 
	}


	@RequestMapping(value = "denied", method = {RequestMethod.GET, RequestMethod.POST} )
	public String deniedView(HttpServletRequest request, HttpServletResponse response) {
		logger.info("denied!");
		return "verification/denied";
	}
	
	@RequestMapping(value = "fail", method = {RequestMethod.GET, RequestMethod.POST} )
	public String loginFailed(HttpServletRequest request, HttpServletResponse response) {
		logger.info("fail!");
		return "verification/login-defaultFailure";
	}
	
	@RequestMapping(value = "notFound", method = {RequestMethod.GET, RequestMethod.POST} )
	public String loginUserNotFound(HttpServletRequest request, HttpServletResponse response) {
		logger.info("notFound!");
		return "verification/login-userNotFound";
	}
	
	@RequestMapping(value = "mismatch", method = {RequestMethod.GET, RequestMethod.POST} )
	public String passwordMissmatch(HttpServletRequest request, HttpServletResponse response) {
		logger.info("mismatch!");
		return "verification/login-passwordMismatch";
	}
	
	@RequestMapping(value = "expired", method = {RequestMethod.GET, RequestMethod.POST} )
	public String accountExpired(HttpServletRequest request, HttpServletResponse response) {
		logger.info("expired!");
		return "verification/login-accountExpired";
	}
	
	@RequestMapping(value = "locked", method = {RequestMethod.GET, RequestMethod.POST} )
	public String accountLocked(HttpServletRequest request, HttpServletResponse response) {
		logger.info("locked!");
		return "verification/login-accountLock";
	}
	
	@RequestMapping(value = "timeExpired", method = {RequestMethod.GET, RequestMethod.POST} )
	public String passwordExpired(HttpServletRequest request, HttpServletResponse response) {
		logger.info("timeExpired!");
		return "verification/login-timeExpired";
	}
	

}
