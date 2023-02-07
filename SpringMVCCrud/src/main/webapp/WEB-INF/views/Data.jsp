<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.List" %>
    <%@page import ="com.spring.Entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body{
		background-image: url("static//pexels-simon-berger-1323550.jpg");
	}
	.table{width:800px;}
	.c1{Height:500; width:500px;}
.t1{height:50px; width:500px; background-color:#BD1E51; margin-top:20px;}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div  align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
		<div class="t2"><h4>Information Find By Field</h4></div>
		<br><br>
			<div class="col-sm-7" id="data">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>User ID</th>
					 		<th>Name</th>
							<th>Age</th>
							<th>Gender</th>
							<th>Contact</th>
							<th>Email</th>
							<th>Password</th>
							<th>UserType</th>
							<th>UserStatus</th>
						</tr>
					</thead>
<%
								List<UsersTotal> list = (List<UsersTotal>) request.getAttribute("list");
								for(UsersTotal u : list){
%>
					<tbody>
						<tr>
							<td><%= u.getUserid() %></td>
							<td><%= u.getName() %></td>
							<td><%= u.getAge() %></td>
							<td><%= u.getSex() %></td>
							<td><%= u.getContact() %></td>
							<td><%= u.getMail() %></td>
							<td><%= u.getPwsd() %></td>
							<td><%= u.getUsertype() %></td>
							<td><%= u.getUserstatus() %></td>
						</tr>
					</tbody>
<% } %>
				</table>
			</div>
 
</div>
<div id="home" class="btn btn-outline-success" style="margin-left:25%;"><a href="home"><b>Home</b></a></div>

</body>
</html>