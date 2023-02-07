package com.spring.Entity;

public class UsersTotal {
	
	private Integer userid;
	private String name;
	private String age;
	private String sex;
	private String contact;
	private String mail;
	
	private String usertype;
	private String userstatus;
	private String pwsd;
	
	
	public UsersTotal() {
		super();
		// TODO Auto-generated constructor stub
	}


	public UsersTotal(Integer userid, String name, String age, String sex, String contact, String mail, String usertype,
			String userstatus, String pwsd) {
		super();
		this.userid = userid;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.contact = contact;
		this.mail = mail;
		this.usertype = usertype;
		this.userstatus = userstatus;
		this.pwsd = pwsd;
	}


	public Integer getUserid() {
		return userid;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
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
