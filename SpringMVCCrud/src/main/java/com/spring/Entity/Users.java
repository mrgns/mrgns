package com.spring.Entity;

public class Users {

	private Integer userid;
	private String name;
	private String age;
	private String sex;
	private String contact;
	private String mail;
	
	
	public Users() {
		super();
	}

	public Users(Integer userid, String name, String age, String sex, String contact, String mail) {
		super();
		this.userid = userid;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.contact = contact;
		this.mail = mail;
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
	
	
	
}
