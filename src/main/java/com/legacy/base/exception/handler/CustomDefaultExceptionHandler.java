package com.legacy.base.exception.handler;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.View;

import com.legacy.base.exception.BaseException;

@ControllerAdvice
public class CustomDefaultExceptionHandler {
	public static final String ERROR_MESSAGE_ATTR = "message";
	public static final String DEFAUT_VIEW_NAME = "error";
	public static final int CUSTOM_ERROR_CODE = 999;

	@Autowired
	private View jsonView;

	@ExceptionHandler(NoHandlerFoundException.class) 
	public String handleNoHandlerFoundException(NoHandlerFoundException e) {
		return "404";
	}

	@ExceptionHandler(BaseException.class)
	public ModelAndView handleBaseException(HttpServletRequest request, HttpServletResponse response, BaseException e) {
		response.setStatus(CUSTOM_ERROR_CODE);

		ModelAndView mav = null;
		String ajaxHeader = request.getHeader("X-Requested-With");
		if ("XMLHttpRequest".equals(ajaxHeader)) {
			mav = new ModelAndView(jsonView);
			mav.addObject(ERROR_MESSAGE_ATTR, e.getMessage());
		}else{
			String viewName = (e.getViewName() == null) ? DEFAUT_VIEW_NAME : e.getViewName();
			mav = new ModelAndView(viewName);
			mav.addObject(ERROR_MESSAGE_ATTR, e.getMessage());
		}

		return mav;
	}

	@ExceptionHandler(Throwable.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	public ModelAndView handleThrowable(HttpServletRequest request, Throwable t) {
		Throwable cause = ExceptionUtils.getRootCause(t);
		ModelAndView mav = null;

		String ajaxHeader = request.getHeader("X-Requested-With");
		if ("XMLHttpRequest".equals(ajaxHeader)) {
			mav = new ModelAndView(jsonView);
		}else{
			mav = new ModelAndView(DEFAUT_VIEW_NAME);
		}

		if (cause instanceof SQLException) {
			handleSQLException((SQLException)cause, mav.getModel());
		} else {
			mav.addObject(ERROR_MESSAGE_ATTR, t.getMessage());
		}
		return mav;
	}

	private void handleSQLException(SQLException e, Map<String, Object> model) {
		model.put(ERROR_MESSAGE_ATTR, "데이터베이스 처리 과정에서 오류가 발생했습니다.");
	}
}