package com.legacy.web.examples.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/examples/eCommerce")
public class ECommerceController {

	private final Logger logger = LoggerFactory.getLogger(ECommerceController.class);

	//@Autowired
	//private MemberService memberService;


	@RequestMapping(value = "/products", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String products(HttpServletRequest request, HttpServletResponse response) {
		logger.info("products!");
		return "examples/eCommerce/products";
	}

	@RequestMapping(value = "/productDetails", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String productDetails(HttpServletRequest request, HttpServletResponse response) {
		logger.info("productDetails!");
		return "examples/eCommerce/product-details";
	}
	

	@RequestMapping(value = "/checkout", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String checkout(HttpServletRequest request, HttpServletResponse response) {
		logger.info("checkout!");
		return "examples/eCommerce/checkout";
	}
	

	@RequestMapping(value = "/orderReceived", method = {RequestMethod.GET}/* , produces = MediaType.TEXT_HTML_VALUE */)
	public String orderReceived(HttpServletRequest request, HttpServletResponse response) {
		logger.info("orderReceived!");
		return "examples/eCommerce/order-received";
	}

}
