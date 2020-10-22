package com.legacy.base.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class TimeExpiredException  extends AuthenticationException{
	private static final long serialVersionUID = 1L;

	public TimeExpiredException(String msg) {
		super(msg);
	}

	public TimeExpiredException(String msg, Throwable t) {
		super(msg, t);
	}
}
