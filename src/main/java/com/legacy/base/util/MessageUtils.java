package com.legacy.base.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
 
public class MessageUtils {
 
    private MessageSourceAccessor msAcc = null;
     
    public void setMessageSourceAccessor(MessageSourceAccessor msAcc) {
        this.msAcc = msAcc;
    }
     
    public String getMessage(String key) {
    	System.out.println(key);
    	HttpServletRequest httpRequest = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        if(httpRequest.getLocale() != null) {
        	try {
        		return msAcc.getMessage(key, httpRequest.getLocale());
        	}catch(Exception e) {
        		return msAcc.getMessage(key);
        	}
        }else {
        	return msAcc.getMessage(key);
        }
        
        
    }
    
    public String getMessage(String key, Object[] argument) {
        HttpServletRequest httpRequest = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return msAcc.getMessage(key, argument, httpRequest.getLocale());
    }
}