package com.spring.Entity;

public class UsersAccess {
	
	private int userid;
	private String usertype;
	private String userstatus;
	private String pwsd;
	
	
	
	public UsersAccess() {
		super();
		// TODO Auto-generated constructor stub
	}


	public UsersAccess(int userid, String usertype, String userstatus, String pwsd) {
		super();
		this.userid = userid;
		this.usertype = usertype;
		this.userstatus = userstatus;
		this.pwsd = pwsd;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getUsertype() {
		return usertype;
	}


	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}


	public String getUserstatus() {
		return userstatus;
	}


	public void setUserstatus(String userstatus) {
		this.userstatus = userstatus;
	}


	public String getPwsd() {
		return pwsd;
	}


	public void setPwsd(String pwsd) {
		this.pwsd = pwsd;
	}
	
	

}
