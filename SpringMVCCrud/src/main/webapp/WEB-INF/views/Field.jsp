<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body{
		background-image: url("static//pexels-simon-berger-1323550.jpg");
	}
	.c1{Height:500; width:500px;}
.t1{height:50px; width:500px; background-color:#BD1E51; margin-top:20px;}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search 2</title>
</head>
<body>
<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
		<div class="t2"><h4>Information Find By Field</h4></div>
		<div class="c1" align="center">
			<div class="container" align="center">
				<form name="frm" action="data" method="Post" class="px-4 py-3">
				
					<tr>
						<td>
							<div class="form-group">
							    <label >Field Name</label><br>
							   		<select name="var" class="form-control mr-sm-2" >
										<option value="name">Name</option>
										<option value="age">Age</option>
										<option value="sex">Gender (Male / Female)</option>
										<option value="contact">Contact</option>
										<option value="mail">Mail (Example@gmail.com)</option>
										<option value="usertype">User Type (Admin / User)</option>
									</select>
							  </div><br>
							</td>
							<td> 
								<div class="form-group">
								    <label >Value</label>
								    <input type="text" name="val" class="form-control mr-sm-2" />
							  </div>
						  </td>
						  <td>
						  		<button type="submit" value="Submit" class="btn btn-outline-success">Search</button>
						  </td>
						</tr>

	  				</form>
	  			</div>
		</div>
	</div>
	
	
	<div id="home" class="btn btn-outline-success" style="margin-left:25%;"><a href="home"><b>Home</b></a></div>
</body>
</html>