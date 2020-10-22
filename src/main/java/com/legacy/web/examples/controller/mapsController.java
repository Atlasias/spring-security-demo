package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/maps")
public class mapsController {

	private final Logger logger = LoggerFactory.getLogger(mapsController.class);

	//@Autowired
	//private MemberService memberService;


	@RequestMapping(value = "/googleMap", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String googleMap(HttpServletRequest request, HttpServletResponse response) {
		logger.info("googleMap!");
		return "examples/maps/google-map";
	}

	@RequestMapping(value = "/vectorMap", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String vectorMap(HttpServletRequest request, HttpServletResponse response) {
		logger.info("vectorMap!");
		return "examples/maps/vector-map";
	}


}
