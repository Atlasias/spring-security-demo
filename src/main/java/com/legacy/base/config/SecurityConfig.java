package com.legacy.base.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.ExceptionTranslationFilter;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.authentication.session.ConcurrentSessionControlAuthenticationStrategy;
import org.springframework.security.web.session.ConcurrentSessionFilter;
import org.springframework.security.web.session.HttpSessionEventPublisher;

import com.legacy.base.authentication.filter.ExceptionTimeoutRedirectFilter;
import com.legacy.base.authentication.filter.MyFormLoginAuthenticationFilter;
import com.legacy.base.authentication.handler.MySavedRequestAwareAuthenticationSuccessHandler;
import com.legacy.base.authentication.handler.MySimpleUrlAuthenticationFailureHandler;
import com.legacy.base.authentication.provider.CustomAuthenticationProvider;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("securityService")
	private UserDetailsService userDetailsService;

	@Autowired
	@Qualifier("datasource")
	private DataSource dataSource;
	
	@Value("${account.login.identifier}")
	private String identifier;

	@Value("${account.login.validator}")
	private String validator;
	
	@Value("${account.token.param}")
	private String tokenParameter;
	
	@Value("${account.token.key}")
	private String tokenKey;

	@Value("${account.token.cookieName}")
	private String tokenCookieName;
	
	@Value("${account.token.cookieExpireTime}")
	private int tokenExpireTime;
	
	/*
	 * @Autowired private MySavedRequestAwareAuthenticationSuccessHandler
	 * loginSuccessHandler;
	 * 
	 * @Autowired private MySimpleUrlAuthenticationFailureHandler
	 * loginFailureHandler;
	 */


	@Bean
	public PasswordEncoder passwordEncoder() {
		//spring security encoder
		return new BCryptPasswordEncoder();
	}

	/*
	 * @Autowired public void configureGlobal(AuthenticationManagerBuilder auth)
	 * throws Exception { auth .userDetailsService(userDetailsService)
	 * .passwordEncoder(passwordEncoder()); }
	 */


	@Override
	public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) {
		authenticationManagerBuilder.authenticationProvider(customAuthenticationProviderBean());
	}

	/*
	 * @Override protected void configure(AuthenticationManagerBuilder auth) throws
	 * Exception { auth.parentAuthenticationManager(authenticationManagerBean()).
	 * userDetailsService(userDetailsService).passwordEncoder(passwordEncoder()); }
	 */


	@Override
	public void configure( WebSecurity web ) throws Exception {
		// This is here to ensure that the static content (JavaScript, CSS, etc)
		// is accessible from the login page without authentication
		web
		.ignoring()
		.antMatchers("/css/**", "/images/**", "/img/**", "/js/**", "/fonts/**", "/**/favicon.ico", "/error");
	}

	/*
	 * http://docs.spring.io/spring-security/site/docs/4.0.2.RELEASE/reference/html/jc.html
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//sessionManagement 추가

		http
		.authorizeRequests()
		//.antMatchers("/base/login/*", "/examples/**/*", "/samples/**/*", "/web-inf/layouts/**/*").permitAll()
		//.antMatchers("/**").permitAll()
		//.antMatchers("/secure/**", "/manage/**", "/admin/**", "/comment/admin/**").hasRole("ADMIN")
		.antMatchers("/verification/*").permitAll()
		.antMatchers("/**").authenticated()
		//.anyRequest().authenticated()
		.anyRequest().permitAll()
		.and()
			.formLogin().permitAll()
				.loginPage("/verification/login")
				.loginProcessingUrl("/j_spring_security_check")
				.usernameParameter(identifier)
				.passwordParameter(validator)
				.successHandler(loginSuccessHandler())
				.failureHandler(loginFailureHandler())
				//.defaultSuccessUrl("/main")
		.and()
		.rememberMe()
			.key(tokenKey)
			.rememberMeParameter(tokenParameter)
			.rememberMeCookieName(tokenCookieName)
			.userDetailsService(userDetailsService) //required
			.alwaysRemember(false)
			.tokenValiditySeconds(tokenExpireTime)
			.tokenRepository(persistentTokenRepository()) //add this if you control token from DataBase.
		
		//        rememberMe(): It returns RememberMeConfigurer class using which remember-me configuration is done.
		//        key(): It specifies the key to identify tokens.
		//        rememberMeParameter(): It specifies the name attribute which we use to create HTML checkbox.
		//        rememberMeCookieName(): It specifies the cookie name stored in the browser.
		//        tokenValiditySeconds(): Specifies the time in seconds after which is token is expired. //Base64Encode(username:expiryTime:Md5(username:expiryTime:password:key)
		//        tokenRepository() : using db token check
		//        userDetailsService() : using for verify authentication
		.and()
		//logout은 post로 처리함
		.logout().permitAll()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/verification/logout")
			//.logoutSuccessHandler(customLogoutSuccessHandler)
			.invalidateHttpSession(true)
			.deleteCookies("JSESSIONID",tokenCookieName)

		.and()
		// 403 예외처리 핸들링
		.exceptionHandling()
		.accessDeniedPage("/verification/denied")

		.and()
			.csrf().disable()
			.addFilter(myFormLoginAuthenticationFilterBean())
			.addFilter(concurrentSessionFilterBean())
			.addFilterAfter(exceptionTimeoutRedirectFilterBean(), ExceptionTranslationFilter.class)
			.httpBasic()

		.and() 
			.sessionManagement()
			.maximumSessions(1)
			.maxSessionsPreventsLogin(true)//to prevent duplicate login
		;


	}

	private SessionRegistryImpl sessionRegistry;

	@Bean
	public SessionRegistryImpl SessionRegistryImplBean() throws Exception {
		sessionRegistry = new SessionRegistryImpl();
		return sessionRegistry;
	}

	/*
	 * @Bean public AuthenticationFailureHandler authenticationFailureHandler() {
	 * return new CustomAuthenticationFailureHandler(); }
	 */

	@Bean
	public AuthenticationProvider customAuthenticationProviderBean() {
		CustomAuthenticationProvider authProvider = new CustomAuthenticationProvider();
		authProvider.setEncoder(passwordEncoder());
		return authProvider;
	}

	@Override
	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	public ExceptionTimeoutRedirectFilter exceptionTimeoutRedirectFilterBean() throws Exception {
		ExceptionTimeoutRedirectFilter filter = new ExceptionTimeoutRedirectFilter();
		return filter;
	}

	/**session 만료시 페이지 이동*/
	@Bean
	public ConcurrentSessionFilter concurrentSessionFilterBean() throws Exception {
		String expiredUrl = "/verification/login";
		SessionRegistryImpl sessionRegistry = new SessionRegistryImpl();
		//ConcurrentSessionFilter concurrentSessionFilter = new ConcurrentSessionFilter(sessionRegistry, expiredUrl);
		ConcurrentSessionFilter concurrentSessionFilter = new ConcurrentSessionFilter(sessionRegistry);
		return concurrentSessionFilter;
	}

	@Bean
	public MyFormLoginAuthenticationFilter myFormLoginAuthenticationFilterBean() throws Exception {
		/*
		 * UsernamePasswordAuthenticationFilter Filter implement
		 */
		MyFormLoginAuthenticationFilter myFormLoginAuthentication = new MyFormLoginAuthenticationFilter();
		myFormLoginAuthentication.setAuthenticationManager(authenticationManagerBean());
		/*
		 * SavedRequestAwareAuthenticationSuccessHandler implement
		 * Inject setDefaultTargetUrl
		 */
		loginSuccessHandler().setDefaultTargetUrl("/main");
		myFormLoginAuthentication.setAuthenticationSuccessHandler(loginSuccessHandler());
		/*
		 * SimpleUrlAuthenticationFailureHandler implement
		 * setting TargetURL
		 */
		loginFailureHandler().setDefaultFailureUrl("/verification/fail"); //로그인 실패
		loginFailureHandler().setUserNotFoundUrl("/verification/notFound"); //사용자를 찾을수 없음
		loginFailureHandler().setPasswordMismatchUrl("/verification/mismatch"); //패스워드 불일치
		loginFailureHandler().setAccountExpiredUrl("/verification/expired"); //계정 만료
		loginFailureHandler().setAccountLockUrl("/verification/locked"); //계정 잠금
		loginFailureHandler().setTimeExpiredUrl("/verification/timeExpired"); //password 만료

		myFormLoginAuthentication.setAuthenticationFailureHandler(loginFailureHandler());
		/*
		 * SessionAuthenticationStrategy implement
		 * setting TargetURL
		 */
		myFormLoginAuthentication.setSessionAuthenticationStrategy(new ConcurrentSessionControlAuthenticationStrategy(new SessionRegistryImpl()));
		return myFormLoginAuthentication;
	}

	@Bean
	public MySavedRequestAwareAuthenticationSuccessHandler loginSuccessHandler() throws Exception {
		MySavedRequestAwareAuthenticationSuccessHandler loginSuccessHandler = new MySavedRequestAwareAuthenticationSuccessHandler();
		loginSuccessHandler.setDefaultTargetUrl("/main");
		return loginSuccessHandler;
	}

	@Bean
	public MySimpleUrlAuthenticationFailureHandler loginFailureHandler() throws Exception {
		MySimpleUrlAuthenticationFailureHandler loginFailureHandler = new MySimpleUrlAuthenticationFailureHandler();
		return loginFailureHandler;
	}


	@Bean //session event publisher for embedded tomcat 
	public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher() { 
		return new ServletListenerRegistrationBean<HttpSessionEventPublisher>(new HttpSessionEventPublisher()); 
	}
	
	/**
	 * PersistentTokenRepository for cookie token verification
	 * if tokenManager is not customized it has embedded default token check sql.
	 * use this table creation sql
	    create table 
	    persistent_logins (
		    username varchar(64) not null,
	        series varchar(64) primary key,
	        token varchar(64) not null,
	        last_used timestamp not null
	    );
	 * 
	 * {@link PersistentTokenBasedRememberMeServices }
	 * */
	
	  @Bean public PersistentTokenRepository persistentTokenRepository() {
	  JdbcTokenRepositoryImpl jdbcToken = new JdbcTokenRepositoryImpl();
	  jdbcToken.setDataSource(dataSource); return jdbcToken;
	  
	  }
	 


}