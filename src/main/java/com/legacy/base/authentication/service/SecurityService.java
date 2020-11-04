package com.legacy.base.authentication.service;

import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.legacy.base.util.CamelCaseMap;
import com.legacy.web.login.domain.SecurityUser;
import com.legacy.web.login.service.LoginService;

@Service("securityService")
public class SecurityService implements UserDetailsService {

	private final Logger logger = LoggerFactory.getLogger(SecurityService.class);

	@Autowired
	private PasswordEncoder encoder;

	@Value("${account.login.identifier}")
	private String identifier;

	@Value("${account.login.validator}")
	private String validator;

	@Autowired
	private LoginService loginService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		//SPRING 4 이상에서 auth role을 확인하려면 "ROLE_" + (사용자권한)으로 되어있어야함
		GrantedAuthority grantedAuthority = new SimpleGrantedAuthority("ROLE_USER");

		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();

		//기본 security UsernamePasswordAuthenticationFilter의 암호값을 가져올 경우 사용
		//String password = request.getParameter(UsernamePasswordAuthenticationFilter.SPRING_SECURITY_FORM_PASSWORD_KEY);
		String id = request.getParameter(identifier);
		String password = request.getParameter(validator);
		
		
		SecurityUser securityUser = null;
		boolean accountEnabled = true;//정상계정 인지 확인(false일 경우 account disabled exception)
		boolean accountNonExpired = true;//계정이 만료되었는지 확인(false일 경우 account expired exception)
		boolean accountCredentialsNonExpired = true;//정상계정 인지 확인(false일 경우 account credentials exception)
		boolean accountNonLocked = true;//계정이 잠금 되었는지 확인(false일 경우 account locked exception)

		//id 존재여부 확인
		CamelCaseMap loginMap = loginService.selectAuthUserInfo(id);

		//로그인 실패
		if(loginMap == null || loginMap.isEmpty()) {
			logger.debug("no user found!");
			throw new UsernameNotFoundException("no user found! access : "+username);
		}
		//로그인 성공
		else {

			List<GrantedAuthority> grantedAuthorityList = new LinkedList<>();

			logger.debug("{}",loginMap);
			logger.debug("accessed rawpassword : {}, encryptedPassword : {}",password,encoder.encode(password));

			//권한목록 조회
			grantedAuthorityList = getUserAuthList(id);

			securityUser = new SecurityUser(username, encoder.encode(password), accountEnabled, accountNonExpired, accountCredentialsNonExpired, accountNonLocked, grantedAuthorityList);		
		}
		return securityUser;
	}

	private List<GrantedAuthority> getUserAuthList(String id) {

		List<GrantedAuthority> authList = new LinkedList<>();

		List<CamelCaseMap> roleList = loginService.selectuserRoles(id);

		if(roleList!=null && roleList.size()>0) {

			Set<String> roleSet = new LinkedHashSet<>();

			for(CamelCaseMap map : roleList) {

				String role = (String) map.get("authNm");

				roleSet.add(role);

			}

			for(String role : roleSet) {
				String roleName = "ROLE_"+role;

				logger.debug("adding role name : {}",role);

				GrantedAuthority auth = new SimpleGrantedAuthority(roleName);
				authList.add(auth);
			}


		}
		return authList;
	}

}	
