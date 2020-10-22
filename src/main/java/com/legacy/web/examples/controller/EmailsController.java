package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/emails")
public class EmailsController {

	private final Logger logger = LoggerFactory.getLogger(EmailsController.class);

	//@Autowired
	//private MemberService memberService;


	@RequestMapping(value = "/emailCompose", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String emailCompose(HttpServletRequest request, HttpServletResponse response) {
		logger.info("emailCompose!");
		return "examples/emails/email-composer";
	}

	@RequestMapping(value = "/inbox", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String inbox(HttpServletRequest request, HttpServletResponse response) {
		logger.info("inbox!");
		return "examples/emails/inbox";
	}

	@RequestMapping(value = "/email", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String email(HttpServletRequest request, HttpServletResponse response) {
		logger.info("inbox!");
		return "examples/emails/email";
	}
	
}
