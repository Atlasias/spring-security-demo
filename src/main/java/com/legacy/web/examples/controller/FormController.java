package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/formStuff")
public class FormController {

private final Logger logger = LoggerFactory.getLogger(FormController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/formLayouts", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String formLayouts(HttpServletRequest request, HttpServletResponse response) {
		logger.info("formlayouts!");
        return "examples/formStuff/formLayouts";
    }
	
	@RequestMapping(value = "/formWizard", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String formWizard(HttpServletRequest request, HttpServletResponse response) {
		logger.info("formWizard!");
        return "examples/formStuff/formWizard";
    }
	
}
