<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	.t1{height:50px; width:500px; background-color:#BD1E51; margin-top:20px;}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>
</head>
<body>
	<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
	
		<div class="container">
			<form name="frm" action="searchdata" method="Post" class="form-inline">
			    <input type="number" name="userid"  aria-label="Search" class="form-control mr-sm-2" placeholder="Search"/>
			    <button class="btn btn-outline-success my-2 my-sm-0" value="Submit">Search</button>
			  </form>
		</div>
	</div>
	
	<div class="data"> </div>
	<br><br>
	
	
<div id="home" class="btn btn-outline-success" style="margin-left:10%;"><a href="home"><b>Home</b></a></div>
</body>
</html>