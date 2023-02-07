package com.spring.Entity;

import static org.junit.Assert.*;

import org.junit.Test;

public class UsersTest {

	Users Users = new Users();
	@Test
	void setterTest() {
		Users.setUserid(null);
		Users.setName(null);
		Users.setContact(null);
		Users.setAge(null);
		Users.setMail(null);
		Users.setSex(null);
	}
	
	@Test
	void getterTest() {
		Users.getAge();
		Users.getContact();
		Users.getMail();
		Users.getName();
		Users.getUserid();
		Users.getSex();
	}

}
