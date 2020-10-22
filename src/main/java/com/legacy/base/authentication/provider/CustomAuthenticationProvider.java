package com.legacy.base.authentication.provider;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.legacy.base.authentication.exception.PasswordMismatchException;
import com.legacy.base.authentication.exception.TimeExpiredException;
import com.legacy.base.authentication.exception.UserAccountExpiredException;
import com.legacy.base.authentication.exception.UserAccountLockException;
import com.legacy.base.authentication.exception.UserNotFoundException;
import com.legacy.base.authentication.handler.MySimpleUrlAuthenticationFailureHandler;
import com.legacy.base.util.CamelCaseMap;
import com.legacy.web.login.domain.SecurityUser;
import com.legacy.web.login.service.LoginService;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	private final Logger logger = LoggerFactory.getLogger(CustomAuthenticationProvider.class);
	
	@Autowired
	@Qualifier("securityService")
	private UserDetailsService userDetailsService;
 
	@Autowired
	private LoginService loginService;
	
	private PasswordEncoder encoder;
	
	/**
	 * provider catches authenticate info from security filter
	 * passed user info is given
	 * fetches userDetailService(implemented instance of spring.security.User)
	 * */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        
        String username = (String) authentication.getPrincipal();
        String password = (String) authentication.getCredentials();
        
        SecurityUser securityUser = null;
        CamelCaseMap loginMap = null;
        
        //입력 데이터 검증
        if(username==null || password== null) {
            throw new BadCredentialsException("access is not using right format : "+username);
        }else {
        	//정상 조회 처리
        	securityUser = (SecurityUser) userDetailsService.loadUserByUsername(username);
        	loginMap = loginService.selectAuthUserInfo(username);
        }
        //조회 데이터 검증
    	if(securityUser==null || loginMap == null || loginMap.isEmpty()) {
        	throw new UserNotFoundException("user Not FoundException : "+username);
		}
        else if(!encoder.matches(password, (String) loginMap.get("userKey"))) {
            throw new PasswordMismatchException("password missmatch : "+username);
        }
        else if(!securityUser.isEnabled()) {
            throw new BadCredentialsException("user disabled : "+username);
        }
        else if(!securityUser.isAccountNonExpired()) {
            throw new UserAccountExpiredException("user account expired : "+username);
        }
        else if(!securityUser.isAccountNonLocked()) {
            throw new UserAccountLockException("user account locked : "+username);
        }
        else if(!securityUser.isCredentialsNonExpired()) {
            throw new TimeExpiredException("password expired : "+username);
        }else if(username==null || password==null) {
        	throw new BadCredentialsException("no thing passed at login");
        }
    	//security를 통해 session에 사용자정보가 저장됨.
		//상세 정보를 이용하기 위해 상세 정보 object를 securityUser객체에 담음
		//SessionUser suser = loginService.selectUserDetails(username);
		//securityUser.setUserInfo(suser);
    	
        return new UsernamePasswordAuthenticationToken(securityUser, password, securityUser.getAuthorities());
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
    
	public PasswordEncoder getEncoder() {
		return encoder;
	}

	public void setEncoder(PasswordEncoder encoder) {
		this.encoder = encoder;
	}
 
    
    
}


