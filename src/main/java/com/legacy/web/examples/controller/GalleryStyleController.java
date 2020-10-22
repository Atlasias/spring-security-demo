package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/galleryStyle")
public class GalleryStyleController {

private final Logger logger = LoggerFactory.getLogger(GalleryStyleController.class);
    
	//@Autowired
    //private MemberService memberService;

	
	@RequestMapping(value = "/gallery1", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String galleryStyle1(HttpServletRequest request, HttpServletResponse response) {
		logger.info("gallery1!");
        return "examples/galleryStyle/gallery1";
    }
	
	@RequestMapping(value = "/gallery2", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String galleryStyle2(HttpServletRequest request, HttpServletResponse response) {
		logger.info("gallery2!");
        return "examples/galleryStyle/gallery2";
    }
	
	@RequestMapping(value = "/galleryStyle3", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String galleryStyle3(HttpServletRequest request, HttpServletResponse response) {
		logger.info("gallery3!");
        return "examples/galleryStyle/gallery3";
    }
}
