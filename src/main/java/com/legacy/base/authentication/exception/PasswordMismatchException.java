package com.legacy.base.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class PasswordMismatchException extends AuthenticationException {
	
	private static final long serialVersionUID = 1L;

	public PasswordMismatchException(String msg) {
		super(msg);
	}

	public PasswordMismatchException(String msg, Throwable t) {
		super(msg, t);
	}
}
