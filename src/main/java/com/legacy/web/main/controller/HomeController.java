package com.legacy.web.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	private final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// @Autowired
	// private MemberService memberService;

	@RequestMapping(value = { "main", "" }, method = RequestMethod.GET/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String home(HttpServletRequest request, HttpServletResponse response) {
		logger.info("main!");
		return "main";
	}

	/*
	 * @RequestMapping(value = "error", method = {RequestMethod.GET} , produces =
	 * MediaType.TEXT_HTML_VALUE ) public String error(HttpServletRequest request,
	 * HttpServletResponse response, Model model) {
	 * logger.info("error status : "+response.getStatus());
	 * 
	 * int errorStat = response.getStatus(); String errorHeader = ""; String
	 * errorDesc = ""; if(errorStat>=200 && errorStat<300){
	 * 
	 * logger.info("requested URI : {}",request.getRequestURI());
	 * 
	 * }else if(errorStat>=400 && errorStat<500) {
	 * 
	 * errorHeader = "Sorry! The Page Not Found"; errorDesc =
	 * "The Link You Followed Probably Broken, or the page has been removed...";
	 * 
	 * }else if(errorStat>=500 && errorStat<600) {
	 * 
	 * errorHeader = "Internal Server Error"; errorDesc =
	 * "Looks like Something went wrong. We apologize. You can go back to main page."
	 * ;
	 * 
	 * }else {
	 * 
	 * errorHeader = "Unknown Error"; errorDesc = "Please Contact our website!";
	 * 
	 * }
	 * 
	 * logger.debug("1."+request.getAttribute("javax.servlet.error.status_code"));
	 * logger.debug("2."+request.getAttribute("javax.servlet.error.exception_type"))
	 * ; logger.debug("3."+request.getAttribute("javax.servlet.error.message"));
	 * logger.debug("4."+request.getAttribute("javax.servlet.error.request_uri"));
	 * logger.debug("5."+request.getAttribute("javax.servlet.error.exception"));
	 * logger.debug("6."+request.getAttribute("javax.servlet.error.servlet_name"));
	 * 
	 * request.setAttribute("javax.servlet.error.status_code", errorStat);
	 * request.setAttribute("javax.servlet.error.exception_type", errorHeader);
	 * request.setAttribute("javax.servlet.error.message", errorDesc);
	 * 
	 * return "error"; }
	 */

}
