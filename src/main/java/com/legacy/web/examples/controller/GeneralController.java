package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/general")
public class GeneralController {

private final Logger logger = LoggerFactory.getLogger(GeneralController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/404", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String page404(HttpServletRequest request, HttpServletResponse response) {
		logger.info("404!");
        return "examples/general/404";
    }
	
	@RequestMapping(value = "/505", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String page505(HttpServletRequest request, HttpServletResponse response) {
		logger.info("505!");
        return "examples/general/505";
    }
	
	@RequestMapping(value = "/contactUs", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String contactUs(HttpServletRequest request, HttpServletResponse response) {
		logger.info("contactUs!");
        return "examples/general/contact";
    }
	
	@RequestMapping(value = "/comingSoon", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String commingSoon(HttpServletRequest request, HttpServletResponse response) {
		logger.info("comingSoon!");
        return "examples/general/coming-soon";
    }
	
	@RequestMapping(value = "/underMaintenance", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String underMaintenance(HttpServletRequest request, HttpServletResponse response) {
		logger.info("underMaintenance!");
        return "examples/general/under-maintenance";
    }
	
	@RequestMapping(value = "/login", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String login(HttpServletRequest request, HttpServletResponse response) {
		logger.info("contactUs!");
        return "examples/general/login";
    }
	
	@RequestMapping(value = "/register", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String register(HttpServletRequest request, HttpServletResponse response) {
		logger.info("register!");
        return "examples/general/register";
    }
	
	@RequestMapping(value = "/searchResult", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String searchResult(HttpServletRequest request, HttpServletResponse response) {
		logger.info("searchResult!");
        return "examples/general/search-result";
    }
	
	@RequestMapping(value = "/faq", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String faq(HttpServletRequest request, HttpServletResponse response) {
		logger.info("faq!");
        return "examples/general/faq";
    }
	
	@RequestMapping(value = "/services", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String services(HttpServletRequest request, HttpServletResponse response) {
		logger.info("/services!");
        return "examples/general/services";
    }
	
	@RequestMapping(value = "/invoice", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String invoice(HttpServletRequest request, HttpServletResponse response) {
		logger.info("invoice!");
        return "examples/general/invoice";
    }
	
	@RequestMapping(value = "/typography", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String typography(HttpServletRequest request, HttpServletResponse response) {
		logger.info("typography!");
        return "examples/general/typography";
    }
	
	@RequestMapping(value = "/liveChat", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String liveChat(HttpServletRequest request, HttpServletResponse response) {
		logger.info("liveChat!");
        return "examples/general/live-chat";
    }
	
	@RequestMapping(value = "/timeline", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String timeline(HttpServletRequest request, HttpServletResponse response) {
		logger.info("timeline!");
        return "examples/general/timeline";
    }
	
	@RequestMapping(value = "/cropbox", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String cropbox(HttpServletRequest request, HttpServletResponse response) {
		logger.info("cropbox!");
        return "examples/general/cropbox";
    }
	
	@RequestMapping(value = "/calculator", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String calculator(HttpServletRequest request, HttpServletResponse response) {
		logger.info("calculator!");
        return "examples/general/calculator";
    }
	
}
