package com.spring.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private Connection con;
	public Connection getConnect() {
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/datadb?user=root&password=Hello@dude1");
		 }catch(SQLException | ClassNotFoundException e) {
			 e.printStackTrace();
		 }
		return con;
	}

}
