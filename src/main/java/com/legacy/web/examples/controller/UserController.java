package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/user")
public class UserController {

	private final Logger logger = LoggerFactory.getLogger(UserController.class);

	//@Autowired
	//private MemberService memberService;


	@RequestMapping(value = "/profilePage", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String profilePage(HttpServletRequest request, HttpServletResponse response) {
		logger.info("profilePage!");
		return "examples/user/profile";
	}

	@RequestMapping(value = "/profileEdit", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String profileEdit(HttpServletRequest request, HttpServletResponse response) {
		logger.info("profileEdit!");
		return "examples/user/profile-edit";
	}


}
