package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/dashboard")
public class DashboardController {
	private final Logger logger = LoggerFactory.getLogger(DashboardController.class);
    
	//@Autowired
    //private MemberService memberService;
	
	@RequestMapping(value = "/dashboard1", method = RequestMethod.GET/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String dashboard1(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("dashboard1!");
		model.addAttribute("test","test123");
        return "examples/dashboard/dashboard1";
    }
	
	@RequestMapping(value = "/dashboard2", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String dashboard2(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("dashboard2!");
        return "examples/dashboard/dashboard2";
    }
	
	@RequestMapping(value = "/dashboard3", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String dashboard3(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("dashboard3!");
        return "examples/dashboard/dashboard3";
    }
	
	@RequestMapping(value = "/dashboard4", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String dashboard4(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("dashboard4!");
        return "examples/dashboard/dashboard4";
    }

}
