package com.legacy.base.authentication.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class MyFormLoginAuthenticationFilter extends
		UsernamePasswordAuthenticationFilter {

	private static final String ERROR_MESSAGE_ATTR = "errormessage";
	
	@Override
    protected void successfulAuthentication(HttpServletRequest request,
            HttpServletResponse response, FilterChain chain, Authentication authResult)
            throws IOException, ServletException {
	    
	    super.successfulAuthentication(request, response, chain, authResult);
	    
	    System.out.println("★★★★★★★★★★★★★★★★★★★★successfulAuthentication★★★★★★★★★★★★★★★★★★★★★★★★★★★");
	    
//        //request.getSession().setAttribute(ERROR_MESSAGE_ATTR, "");
//        if (request.getSession().getAttribute(ERROR_MESSAGE_ATTR) != null) {
//            request.getSession().removeAttribute(ERROR_MESSAGE_ATTR);
//        }
    }
	
    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request,
            HttpServletResponse response, AuthenticationException failed)
            throws IOException, ServletException {
    	System.out.println("★★★★★★★★★★★★★★★★★unsuccessfulAuthentication★★★★★★★★★★★★★★★★★★★★★★★");
        super.unsuccessfulAuthentication(request, response, failed);

//        request.setAttribute(ERROR_MESSAGE_ATTR, failed.getMessage());
//        //request.getSession().setAttribute("errormessage", failed.getMessage());

    }
	
}
