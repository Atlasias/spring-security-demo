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
public class TableChartController {

private final Logger logger = LoggerFactory.getLogger(TableChartController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/tables/tables", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String tables(HttpServletRequest request, HttpServletResponse response) {
		logger.info("tables!");
        return "examples/tables/tables";
    }
	
	@RequestMapping(value = "/charts/charts", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String charts(HttpServletRequest request, HttpServletResponse response) {
		logger.info("charts!");
        return "examples/charts/charts";
    }
	
}
