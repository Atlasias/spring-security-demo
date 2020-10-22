package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/uielems")
public class UIElementController {
	private final Logger logger = LoggerFactory.getLogger(UIElementController.class);
    
	//@Autowired
    //private MemberService memberService;

	@RequestMapping(value = "/pricingplan", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String pricingPlan(HttpServletRequest request, HttpServletResponse response) {
		logger.info("pricingPlan!");
        return "examples/uielems/pricingplan";
    }

	@RequestMapping(value = "/grids", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String grids(HttpServletRequest request, HttpServletResponse response) {
		logger.info("grids!");
        return "examples/uielems/grids";
    }

	@RequestMapping(value = "/calendar", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String calendar(HttpServletRequest request, HttpServletResponse response) {
		logger.info("calendar!");
        return "examples/uielems/calendar";
    }

	@RequestMapping(value = "/pagination", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String pagination(HttpServletRequest request, HttpServletResponse response) {
		logger.info("pagination!");
        return "examples/uielems/pagination";
    }

	@RequestMapping(value = "/buttons", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String buttons(HttpServletRequest request, HttpServletResponse response) {
		logger.info("buttons!");
        return "examples/uielems/buttons";
    }

	@RequestMapping(value = "/dropdowns", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String dropdowns(HttpServletRequest request, HttpServletResponse response) {
		logger.info("dropdowns!");
        return "examples/uielems/dropdowns";
    }

	@RequestMapping(value = "/tabsnaccordians", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String tabsnaccordians(HttpServletRequest request, HttpServletResponse response) {
		logger.info("tabnaccordians!");
        return "examples/uielems/tabsnaccordians";
    }

	@RequestMapping(value = "/progressbars", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String progressbars(HttpServletRequest request, HttpServletResponse response) {
		logger.info("progressbars!");
        return "examples/uielems/progressbars";
    }

	@RequestMapping(value = "/tooltips", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String tooltips(HttpServletRequest request, HttpServletResponse response) {
		logger.info("tooltips!");
        return "examples/uielems/tooltips";
    }

	@RequestMapping(value = "/popovers", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String popovers(HttpServletRequest request, HttpServletResponse response) {
		logger.info("popovers!");
        return "examples/uielems/popovers";
    }

	@RequestMapping(value = "/alerts", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String alerts(HttpServletRequest request, HttpServletResponse response) {
		logger.info("alerts!");
        return "examples/uielems/alerts";
    }
	
	@RequestMapping(value = "/listgroup", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String listgroup(HttpServletRequest request, HttpServletResponse response) {
		logger.info("listgroup!");
        return "examples/uielems/listgroup";
    }
	
	@RequestMapping(value = "/models", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String models(HttpServletRequest request, HttpServletResponse response) {
		logger.info("models!");
        return "examples/uielems/models";
    }
	
	@RequestMapping(value = "/loaders", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String loaders(HttpServletRequest request, HttpServletResponse response) {
		logger.info("loaders!");
        return "examples/uielems/loaders";
    }
	
	@RequestMapping(value = "/cards", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String cards(HttpServletRequest request, HttpServletResponse response) {
		logger.info("cards!");
        return "examples/uielems/cards";
    }
	
	@RequestMapping(value = "/rangeslider", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
    public String rangeslider(HttpServletRequest request, HttpServletResponse response) {
		logger.info("popovers!");
        return "examples/uielems/rangeslider";
    }
}
