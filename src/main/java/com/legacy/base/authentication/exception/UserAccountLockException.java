package com.legacy.base.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class UserAccountLockException extends AuthenticationException {
	
	private static final long serialVersionUID = 1L;

	public UserAccountLockException(String msg) {
		super(msg);
	}

	public UserAccountLockException(String msg, Throwable t) {
		super(msg, t);
	}
}
