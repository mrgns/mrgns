<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.util.List" %>
<%@ page import ="com.spring.Entity.Users" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<div align="center">
	<h2 ><b>User Data Model</b></h2>
	<tr>
	</tr>
	<tr>
	<div class="col-sm-5" align = "center">
	<hr>
	                 <div class="panel-body" align = "center" >
	                 <table class="table">
	  <thead class="thead-dark">
	    <tr>
	            <th>User ID</th>
	            <th>Name</th>
	            <th>Age</th>
	            <th>Gender</th>
	            <th>Contact</th>
	            <th>Email</th>
	            <th>Edit</th>
	            <th>Delete</th>
	   </tr>
	  </thead>
	  <%= request.getAttribute("list")%>
	</table>
	<div>
	
	<hr><a href="/new">New User  </a> <a href="/update"> Update</a> <a href="/findID"> find By ID</a>
</div>
</div>
</body>
</html>