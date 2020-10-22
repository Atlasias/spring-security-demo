package com.legacy.base.authentication.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.legacy.base.authentication.exception.PasswordMismatchException;
import com.legacy.base.authentication.exception.TimeExpiredException;
import com.legacy.base.authentication.exception.UserAccountExpiredException;
import com.legacy.base.authentication.exception.UserAccountLockException;
import com.legacy.base.authentication.exception.UserNotFoundException;
import com.legacy.base.authentication.service.SecurityService;

@Component
public class MySimpleUrlAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

	private final Logger logger = LoggerFactory.getLogger(MySimpleUrlAuthenticationFailureHandler.class);
	
    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();	
    //url is setted in SecurityConfig myFormLoginAuthenticationFilterBean()
    private String defaultFailureUrl;
    private String passwordMismatchUrl;
    private String userNotFoundUrl;
    private String accountExpiredUrl;
    private String accountLockUrl;
    private String timeExpiredUrl;
    

    @Value("${account.login.identifier}")
	private String identifier;
	
	@Value("${account.login.validator}")
	private String validator;
	
	//user info
    //@Autowired
    //private LoginService service;
    
    
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
    		AuthenticationException exception) throws IOException, ServletException {
    	
    	logger.debug("Security AuthenticationFailure...");
    	
    	String userId = request.getParameter(identifier);

        if (defaultFailureUrl == null) {
            logger.debug("No failure URL set, sending 401 Unauthorized error");
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Authentication Failed: " + exception.getMessage());

        } else {
            HttpSession session = request.getSession(false);
            
            //logger.debug("security failure Excepiton : {}",exception);
            //logger.debug("security failure Excepiton getCause : {}",exception.getCause());
            logger.debug("security failure Excepiton getClass : {}",exception.getClass());
           
            //password missmatch
            if( exception instanceof PasswordMismatchException ) {
            	logger.debug("password mismatch Exception occured...");
            	//로그인 실패횟수 증가
            	//service.updateLoginFailedCnt(userId);
                logger.debug("Forwarding to " + getPasswordMismatchUrl());
                redirectStrategy.sendRedirect(request, response, getPasswordMismatchUrl());
            }
            //user not found
            else if(exception instanceof UserNotFoundException|| exception instanceof UsernameNotFoundException) {
            	logger.debug("user not found Exception occured...");
                logger.debug("Forwarding to " + getUserNotFoundUrl());
                redirectStrategy.sendRedirect(request, response, getUserNotFoundUrl());
            }
            //password expired
            else if(exception instanceof TimeExpiredException) {
            	logger.debug("password change time expired Exception occured...");
                logger.debug("Forwarding to " + getTimeExpiredUrl());
                redirectStrategy.sendRedirect(request, response, getTimeExpiredUrl());
            }
            //account locked
            else if(exception instanceof UserAccountLockException) {
            	logger.debug("user account lock Exception occured...");
                logger.debug("Forwarding to " + getAccountLockUrl());
                redirectStrategy.sendRedirect(request, response, getAccountLockUrl());
            }
            //account expired
            else if(exception instanceof UserAccountExpiredException) {
            	logger.debug("user account expired Exception occured...");
                logger.debug("Forwarding to " + getAccountExpiredUrl());
                redirectStrategy.sendRedirect(request, response, getAccountExpiredUrl()+"?userId="+userId);

            }
            //bad crdential
            else{
            	logger.debug("bad credential Exception occured... exception class : {}",exception.getClass());
                logger.debug("Redirecting to " + defaultFailureUrl);
                redirectStrategy.sendRedirect(request, response, defaultFailureUrl);
            }
        }
    	
    }
    

    @Override
    public void setDefaultFailureUrl(String defaultFailureUrl) {
        this.defaultFailureUrl = defaultFailureUrl;
    }


	public String getPasswordMismatchUrl() {
        return passwordMismatchUrl;
    }

    public void setPasswordMismatchUrl(String passwordMismatchUrl) {
        this.passwordMismatchUrl = passwordMismatchUrl;
    }

    public String getUserNotFoundUrl() {
        return userNotFoundUrl;
    }

    public void setUserNotFoundUrl(String userNotFoundUrl) {
        this.userNotFoundUrl = userNotFoundUrl;
    }

    public String getAccountExpiredUrl() {
        return accountExpiredUrl;
    }

    public void setAccountExpiredUrl(String accountExpiredUrl) {
        this.accountExpiredUrl = accountExpiredUrl;
    }

    public String getAccountLockUrl() {
        return accountLockUrl;
    }

    public void setAccountLockUrl(String accountLockUrl) {
        this.accountLockUrl = accountLockUrl;
    }

    public String getTimeExpiredUrl() {
        return timeExpiredUrl;
    }

    public void setTimeExpiredUrl(String timeExpiredUrl) {
        this.timeExpiredUrl = timeExpiredUrl;
    }
}
