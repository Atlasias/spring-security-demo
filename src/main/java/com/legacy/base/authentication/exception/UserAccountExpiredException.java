package com.legacy.base.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class UserAccountExpiredException extends AuthenticationException {
	
	private static final long serialVersionUID = 1L;

	public UserAccountExpiredException(String msg) {
		super(msg);
	}

	public UserAccountExpiredException(String msg, Throwable t) {
		super(msg, t);
	}
}
