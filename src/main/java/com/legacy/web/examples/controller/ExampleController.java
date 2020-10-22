package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples")
public class ExampleController {

private final Logger logger = LoggerFactory.getLogger(ExampleController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/main", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String exampleMain(HttpServletRequest request, HttpServletResponse response) {
		logger.info("exampleMain!");
        return "examples/exampleMain";
    }
	
	
}
