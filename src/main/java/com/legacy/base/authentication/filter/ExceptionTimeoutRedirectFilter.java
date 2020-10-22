package com.legacy.base.authentication.filter;


import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.util.ThrowableAnalyzer;
import org.springframework.security.web.util.ThrowableCauseExtractor;
import org.springframework.web.filter.GenericFilterBean;

import com.legacy.base.util.MessageUtils;

public class ExceptionTimeoutRedirectFilter extends GenericFilterBean {
	
	private static final Logger logger = LoggerFactory.getLogger(ExceptionTimeoutRedirectFilter.class);
	private ThrowableAnalyzer throwableAnalyzer = new DefaultThrowableAnalyzer();
	private AuthenticationTrustResolver authenticationTrustResolver = new AuthenticationTrustResolverImpl();
	private int customSessionExpiredErrorCode = 901;
	
    private MessageUtils messageUtils;
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		try	{
			chain.doFilter(request, response);
			//logger.debug("ExceptionTimeoutRedirectFilter:doFilter : Chain processed normally");
		}catch (IOException ex)	{
			throw ex;
		}catch (Exception ex) {
			Throwable[] causeChain = throwableAnalyzer.determineCauseChain(ex);
			RuntimeException ase = (AuthenticationException) throwableAnalyzer.getFirstThrowableOfType(AuthenticationException.class, causeChain);
			if (ase == null) {
				ase = (AccessDeniedException) throwableAnalyzer.getFirstThrowableOfType(AccessDeniedException.class, causeChain);
			}

			if (ase != null) {
				if (ase instanceof AuthenticationException)	{
					throw ase;
				}

				else if (ase instanceof AccessDeniedException) {
					if (authenticationTrustResolver.isAnonymous(SecurityContextHolder.getContext().getAuthentication())) {
						logger.info("ExceptionTimeoutRedirectFilter:doFilter : User session expired or not logged in yet");
						String ajaxHeader = ((HttpServletRequest) request).getHeader("X-Requested-With");
						if ("XMLHttpRequest".equals(ajaxHeader)) {
							logger.info(
									"Ajax call detected, send {} error code",
									this.customSessionExpiredErrorCode);
							HttpServletResponse resp = (HttpServletResponse) response;
							
							resp.setStatus(customSessionExpiredErrorCode);
							resp.sendError(customSessionExpiredErrorCode, messageUtils.getMessage("cmn.warning.013"));
							//resp.sendError(customSessionExpiredErrorCode, messageUtils.getMessage("ajax security issue occured"));
							//JSONExceptionMessageWriter.writer(resp, customSessionExpiredErrorCode, MessageKey.CMM_WARN_141);
							throw ase;
						}else{
							logger.info("Redirect to login page");
							throw ase;
						}
					}else{
						logger.info("Redirect to login page caused:: AccessDeined");
						throw ase;
					}
				}
			}
		}
	}
	
	private static final class DefaultThrowableAnalyzer extends ThrowableAnalyzer {
		@Override
        protected void initExtractorMap() {
			super.initExtractorMap();
			registerExtractor(ServletException.class, new ThrowableCauseExtractor() {
				@Override
                public Throwable extractCause(Throwable throwable) {
					ThrowableAnalyzer.verifyThrowableHierarchy(throwable, ServletException.class);
					return ((ServletException) throwable).getRootCause();
				}
			});
		}
	}

	public void setCustomSessionExpiredErrorCode(int customSessionExpiredErrorCode)	{
		this.customSessionExpiredErrorCode = customSessionExpiredErrorCode;
	}
}
