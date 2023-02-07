<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.List" %>
    <%@page import ="com.spring.Entity.Users" %>
    <%@page import ="com.spring.Entity.UsersTotal" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.t1{height:50px; width:800px; background-color:#BD1E51; margin-top:20px;}
nav{
	height:50px;
	width:300px;
	background-color:#E1E2E2;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body style="background-image:url('views/image/pic.jpg');">
<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
		<div align="right" style="margin-right:20px;">
			<nav class="navbar navbar-expand-sm " >
			  <div class="container-fluid">	    
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
				  <ul class="navbar-nav me-auto order-0 ">
				  <li class="nav-item"> <a href="new" class="nav-link" >Add User</a></li>
				  <li class="nav-item"><a href="search" class="nav-link" aria-current="page">Find By Id</a></li>
				  <li class="nav-item"><a href="search2" class="nav-link">Find By Field</a></li>
				  </ul>
				  </div>
				  </div>
				</nav>
		</div>
	
	<tr>
	<div class="col-sm-8" align = "center">
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
				            <th>UsersStatus</th>
				            <th>Update</th>
				            <th>Delete</th>
				   		</tr>
						</thead>
				 <tbody>
				  <%
				  	List<UsersTotal> list = (List<UsersTotal>)request.getAttribute("list");
				  	for(UsersTotal u : list){
				  %>
				  <tr>
				 	<td><%= u.getUserid() %></td>
				 	<td><%= u.getName() %></td>
				 	<td><%= u.getAge() %></td>
				 	<td><%= u.getSex() %></td>
				 	<td><%= u.getContact() %></td>
				 	<td><%= u.getMail() %></td>
				 	<td><%= u.getUserstatus() %></td>
				 	<td><a href="edit?id=<%=u.getUserid()%>" class="btn btn-success">Edit</a></td>
				 	<td><button class="btn btn-danger" value="<%=u.getUserid()%>" onclick="ConformDelete(this.value)">Delete</button></td>
				 	</tr>
				 	<% } %>
				 </tbody>
				</table>
	<div>
	
</div>
</div>
<hr>
<p>&copy; mrgns.         Spring MVC CRUD Operations&trade;</p>
<hr>

<script type="text/javascript">
	function ConformDelete(id){
		result = confirm("Do you want to delete");
		if(result){
			$.ajax({
		           type: "GET",
		           url: "delete", // the URL of the controller action method
		           data: id, // optional data
		           success: function(result) {
		                alert("Success");
		           },                
		           error : function(status) {
		        	   alert("Failed");  
		           }
		       });
		}
	}
</script>

</body>
</html>