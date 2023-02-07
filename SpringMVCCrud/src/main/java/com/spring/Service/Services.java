package com.spring.Service;

import java.sql.*;
import java.util.*;

import com.spring.Dao.DBConnection;
import com.spring.Entity.Users;
import com.spring.Entity.UsersAccess;
import com.spring.Entity.UsersTotal;

public class Services {
	
	DBConnection db = new DBConnection();
	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	
//Function to get All Records	
	public List<UsersTotal> getAll(){
		List<UsersTotal> lst = new ArrayList<>();
		try {
			Connection con = db.getConnect();
			pst = con.prepareStatement("select * from users u  inner join UsersAccess uc on u.userid = uc.userid;");
			rs = pst.executeQuery();
			while(rs.next()) {
				UsersTotal u = new UsersTotal();
				u.setUserid(rs.getInt("userid"));
				u.setName(rs.getString("name"));
				u.setAge(rs.getString("age"));
				u.setSex(rs.getString("sex"));
				u.setContact(rs.getString("contact"));
				u.setMail(rs.getString("mail"));
				u.setUserstatus(rs.getString("userstatus"));
				lst.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return lst;
	}

	
// Function to delete Record from database	
	public void DeleteRecord(int userid) {
		try {
			Connection con = db.getConnect();
			pst = con.prepareStatement("delete from UsersAccess where userid = ?");
			pst.setInt(1, userid);
			int c = pst.executeUpdate();
			if(c > 0) {
				pst = con.prepareStatement("Delete from Users where userid = ?");
				pst.setInt(1, userid);
				pst.executeUpdate();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
// Function to create new User and UserAccess	
	public void SaveRecord(Users u, UsersAccess uc) {
		try {
			Connection con = db.getConnect();
			pst = con.prepareStatement("Insert into Users(name,age,sex,contact,mail) values(?,?,?,?,?);");
			pst.setString(1, u.getName()); pst.setString(2, u.getAge());  pst.setString(3, u.getSex());
			pst.setString(4, u.getContact()); pst.setString(5, u.getMail());
			int cat = pst.executeUpdate();
			
			if(cat > 0) {
				pst = con.prepareStatement("select userid from users where mail = ?;");
				pst.setString(1, u.getMail());
				rs = pst.executeQuery();
				if(rs.next())
					uc.setUserid(rs.getInt("userid"));
				
				if(uc.getUserid() != 0) {
					pst = con.prepareStatement("Insert into UsersAccess(userid,pswd) values(?,?);");
					pst.setInt(1, uc.getUserid());
					pst.setString(2, uc.getPwsd());
					cat = pst.executeUpdate();
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

// Find Users Data using Id
	public UsersTotal FindById(String id) {
		UsersTotal ut = new UsersTotal();
		try {
			Connection con = db.getConnect();
			pst = con.prepareStatement("select * from Users u inner join UsersAccess uc on uc.userid = u.userid where u.userid = ?;");
			pst.setString(1, id);
			rs = pst.executeQuery();
			if(rs.next()) {
				ut.setUserid(rs.getInt("userid"));
				ut.setName(rs.getString("name"));
				ut.setAge(rs.getString("age"));
				ut.setSex(rs.getString("sex"));
				ut.setContact(rs.getString("contact"));
				ut.setMail(rs.getString("mail"));
				ut.setUsertype(rs.getString("usertype"));
				ut.setUserstatus(rs.getString("userstatus"));
				ut.setPwsd(rs.getString("pswd"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ut;
	}


	public void updateRecord(UsersTotal u) {
		try {
			Connection con = db.getConnect();
			pst = con.prepareCall("call UpdateInfo(?,?,?,?,?,?,?)");
			pst.setInt(1, u.getUserid());	pst.setString(2, u.getName()); pst.setInt(3, Integer.parseInt(u.getAge()));
			pst.setString(4, u.getSex()); pst.setString(5, u.getContact()); pst.setString(6, u.getMail());
			pst.setString(7, u.getPwsd());
			int c = pst.executeUpdate();
			if(c > 0) {
				pst = con.prepareStatement("Update usersAccess set Userstatus = ? where userid = ? ");
				pst.setString(1, u.getUserstatus());
				pst.setInt(2, u.getUserid());
				c = pst.executeUpdate();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}


	public List<UsersTotal> FindByField(String f, String v) {
		List<UsersTotal> lst = new ArrayList<>();
		try {
			Connection con = db.getConnect();
			String sql;
			if(f.equals("usertype"))
				sql = "select * from Users u inner join UsersAccess uc on uc.userid = u.userid where uc.usertype = '"+v+"';";
			else
				sql = "select * from Users u inner join UsersAccess uc on uc.userid = u.userid where u."+f+" = '"+v+"';";
			
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()) {
				UsersTotal ut =new UsersTotal();
				ut.setUserid(rs.getInt("userid"));
				ut.setName(rs.getString("name"));
				ut.setAge(rs.getString("age"));
				ut.setSex(rs.getString("sex"));
				ut.setContact(rs.getString("contact"));
				ut.setMail(rs.getString("mail"));
				ut.setUsertype(rs.getString("usertype"));
				ut.setUserstatus(rs.getString("userstatus"));
				ut.setPwsd(rs.getString("pswd"));
				System.out.println(rs.getInt("userid"));
				lst.add(ut);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return lst;
	}
	
	

	

}
