package com.legacy.base.util;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


public abstract class Domain {
	private Boolean checked = Boolean.FALSE;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date inptDtime; //입력일시
	private String inptUserId; //입력사용자ID
	private String inptIp; //입력ip

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date modDtime; //수정일시
	private String modUserId; //수정사용자ID
	private String modIp; //수정ip
	private String useYn; //사용유무

	public Domain() {


		try { 
			ServletRequestAttributes sra =
					(ServletRequestAttributes)RequestContextHolder.currentRequestAttributes();
			HttpServletRequest request = sra.getRequest(); 

			if(SessionUtils.getSessionUser() != null) { 
				this.inptUserId = SessionUtils.getSessionUser().getUserId(); 
				this.modUserId = inptUserId;
				this.inptIp = request.getRemoteAddr().startsWith("0:") 
						? "127.0.0.1" :
							request.getRemoteAddr(); 
				this.modIp = inptIp; 
			} else { 
				throw new
				IllegalStateException(); 
			} 
		} catch (IllegalStateException e) { 
			inptUserId = "SYSTEM"; 
			inptIp = "SYSTEM"; 
			modUserId = "SYSTEM"; 
			modIp = "127.0.0.1"; 
		}

//		inptUserId = "SYSTEM";
//		modUserId = "SYSTEM";
//		inptIp = "SYSTEM";
//		modIp = "127.0.0.1";
	}       
}