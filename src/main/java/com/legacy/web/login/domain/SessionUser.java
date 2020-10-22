package com.legacy.web.login.domain;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

@SuppressWarnings("serial")
public class SessionUser implements Serializable {

	private String userId;
	private String userNm;
	private String pw;
    private String userTpCd;
	private String cphnNo;
	private String emlAddr;
	private String company;
	private String jobPosition;
	private String remarks;
	private String pwModDtime;
	private int pwFailCnt;
	private String useYn;
    private String lstPwModDayCnt;
    private String remoteIP;
    private String cuMnId;
	
	
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public String getUserNm() {
        return userNm;
    }
    public void setUserNm(String userNm) {
        this.userNm = userNm;
    }
    public String getPw() {
        return pw;
    }
    public void setPw(String pw) {
        this.pw = pw;
    }
    public String getUserTpCd() {
        return userTpCd;
    }
    public void setUserTpCd(String userTpCd) {
        this.userTpCd = userTpCd;
    }
    public String getCphnNo() {
        return cphnNo;
    }
    public void setCphnNo(String cphnNo) {
        this.cphnNo = cphnNo;
    }
    public String getEmlAddr() {
        return emlAddr;
    }
    public void setEmlAddr(String emlAddr) {
        this.emlAddr = emlAddr;
    }
    public String getRemarks() {
        return remarks;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public String getPwModDtime() {
        return pwModDtime;
    }
    public void setPwModDtime(String pwModDtime) {
        this.pwModDtime = pwModDtime;
    }
    public int getPwFailCnt() {
        return pwFailCnt;
    }
    public void setPwFailCnt(int pwFailCnt) {
        this.pwFailCnt = pwFailCnt;
    }
    public String getUseYn() {
        return useYn;
    }
    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }
    public String getLstPwModDayCnt() {
        return lstPwModDayCnt;
    }
    public void setLstPwModDayCnt(String lstPwModDayCnt) {
        this.lstPwModDayCnt = lstPwModDayCnt;
    }
    public String getRemoteIP() {
        return remoteIP;
    }
    public void setRemoteIP(String remoteIP) {
        this.remoteIP = remoteIP;
    }
    public String getCuMnId() {
		return cuMnId;
	}
	public void setCuMnId(String cuMnId) {
		this.cuMnId = cuMnId;
	}
	@Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getJobPosition() {
		return jobPosition;
	}
	public void setJobPosition(String jobPosition) {
		this.jobPosition = jobPosition;
	}
}