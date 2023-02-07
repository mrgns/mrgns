<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.spring.Entity.UsersTotal" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body{
		background-image: url("static//pexels-simon-berger-1323550.jpg");
	}
.t1{height:50px; width:500px; background-color:#BD1E51; margin-top:20px;}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Form</title>
</head>
<body>
<%
UsersTotal ut =(UsersTotal) request.getAttribute("list");
%>
<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
	<h4>Update User Data</h4>
    <br />
     <div class="col-sm-4">
    <form name ="frm" action="update"  method="Post">
		<table>
		<tr>
			 <Input type="hidden" name="userid" value="<%=ut.getUserid() %>"/>
			<td><label class="form-label" >User Name</label></td>
			<td><input type="text" name="name"  value="<%=ut.getName()%>" class="form-control" /></td>
		</tr>
		 
		 <tr>
			<td><label class="form-label" >Age</label></td>
			<td><input type="text" name="age" value="<%=ut.getAge()%>" class="form-control" /></td>
		</tr><br>
		
		<tr>
			<td><label class="form-label" >Gender</label></td>
			<td><input type="text" name="sex" value="<%=ut.getSex()%>" class="form-control" /></td>
		</tr>
		
		<tr>
			<td><label class="form-label" >Contact</label></td>
			<td><input type="text" name="contact" value="<%=ut.getContact()%>" class="form-control" /></td>
		</tr>
		
		<tr>
			<td><label class="form-label" >Email</label></td>
			 <td><input type="text" name="mail" value="<%=ut.getMail()%>" class="form-control" /></td>
		</tr>
		
		<tr>
			<td><label class="form-label" >Password</label></td>
			<td><input type="text" name="pswd" value="<%=ut.getPwsd()%>" class="form-control" /></td>
		</tr>
		<tr>
			<td><label class="form-label" >UserStatus</label></td>
			<td><input type="text" name="status" value="<%=ut.getUserstatus()%>" class="form-control" /></td>
		</tr>
		
		<tr>
		 	<div class="container">
		 	<td colspan="2"><button type="submit" class="btn btn-info">Save</button> </td>
		 	</div>
		</tr>
		</table>
    </form>
    </div>
</div>
<div id="home" class="btn btn-outline-success" style="margin-left:25%;"><a href="home"><b>Home</b></a></div>
</body>
</html>