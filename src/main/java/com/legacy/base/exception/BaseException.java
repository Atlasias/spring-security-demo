package com.legacy.base.exception;

@SuppressWarnings("serial")
public class BaseException extends RuntimeException {
    private String viewName;
    
    public BaseException(String message) {
        super(message);
    }
    
    public BaseException(String message, Throwable cause) {
        super(message, cause);
    }
    
    public BaseException(String viewName, String message) {
        super(message);
        this.viewName = viewName;
    }
    
    public String getViewName() {
        return viewName;
    }
}