package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/icons")
public class IconsController {

private final Logger logger = LoggerFactory.getLogger(IconsController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/fontawesomeicons", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String fontAwsome(HttpServletRequest request, HttpServletResponse response) {
		logger.info("fontawesomeicons!");
        return "examples/icons/fontawesomeicons";
    }
	
	@RequestMapping(value = "/themifyicons", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String themifyicons(HttpServletRequest request, HttpServletResponse response) {
		logger.info("themifyicons!");
        return "examples/icons/themifyicons";
    }
	
	@RequestMapping(value = "/ionicons", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String ionicons(HttpServletRequest request, HttpServletResponse response) {
		logger.info("fontawesomeicons!");
        return "examples/icons/ionicons";
    }
	
}
