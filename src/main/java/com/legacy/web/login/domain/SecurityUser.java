package com.legacy.web.login.domain;

import java.io.Serializable;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

@SuppressWarnings("serial")
public class SecurityUser extends User implements Serializable {

	private Object userInfo;
	
	public SecurityUser(String username, String password, boolean enabled,
			boolean accountNonExpired,
			boolean credentialsNonExpired,
			boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
        /*
         * Parameters:
         *      [username] the username presented to the DaoAuthenticationProvider
         *      [password] the password that should be presented to the DaoAuthenticationProvider
         *      [enabled] set to true if the user is enabled
         *      [accountNonExpired] set to true if the account has not expired
         *      [credentialsNonExpired] set to true if the credentials have not expired
         *      [accountNonLocked] set to true if the account is not locked
         *      [authorities] the authorities that should be granted to the caller 
         *                  if they presented the correct username and password and the user is enabled. Not null.
         */
		super(username, password, enabled, accountNonExpired,
				credentialsNonExpired, accountNonLocked, authorities);
		
	}
	
	public Object getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(Object userInfo) {
		this.userInfo = userInfo;
	}
}
