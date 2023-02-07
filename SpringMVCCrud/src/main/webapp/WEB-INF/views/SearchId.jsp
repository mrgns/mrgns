<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.spring.Entity.UsersTotal" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.t1{height:50px; width:500px; background-color:#BD1E51; margin-top:20px;}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserData</title>
</head>
<body>
<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
	<div class="container"><h4>User Information</h4></div>
<%
UsersTotal u = (UsersTotal)request.getAttribute("list");
%>
<div class="Container" align="center">
<table class="table" style="width:600px; text-align:center;">
	<tr class="table-primary">
		<td>User ID  </td>
		<td><%=u.getUserid() %></td>
	</tr>
	<tr >
		<td>User Name  </td>
		<td><%=u.getName() %></td>
	</tr>
	<tr >
		<td>Age </td>
		<td><%=u.getAge() %></td>
	</tr>
	<tr >
		<td>Gender </td>
		<td><%=u.getSex() %></td>
	</tr>
	<tr >
		<td>Contact No  </td>
		<td><%=u.getContact() %></td>
	</tr>
	<tr>
		<td>Mail  </td>
		<td><%=u.getMail() %></td>
	</tr>
	<tr>
		<td>Password  </td>
		<td><%=u.getPwsd() %></td>
	</tr>
	<tr class="table-secondary">
		<td>User Type  </td>
		<td><%=u.getUsertype() %></td>
	</tr>
	<tr >
		<td>User Status  </td>
		<td><%=u.getUserstatus() %></td>
	</tr>
	
</table>

</div>
</div>
<div id="home" class="btn btn-outline-success" style="margin-left:25%;"><a href="home"><b>Home</b></a></div>
</body>
</html>