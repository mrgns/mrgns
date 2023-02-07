<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
		background-image: url("static//pexels-simon-berger-1323550.jpg");
	}
	.t1{height:50px; width:600px; background-color:#BD1E51; margin-top:20px;}
	</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
<meta charset="UTF-8">
<title>Info Form</title>
</head>
<body background ="static//pexels-simon-berger-1323550.jpg">
<div align="center">
	<div class="t1"><h2 ><b>Spring MVC CRUD Operations</b></h2></div><hr>
	<h4>Create New User Data</h4>
    <br />
     <div class="col-sm-4">
    <form name ="frm" action="save"  method="post">
 
      
		<div alight="left">
			<tr>
                <label class="form-label" >User Name</label>
                <td>
                <input type="text" name="name" class="form-control" placeholder="User Name" required/>
                </td>
            </tr>
         </div>
            
           <div alight="left">
            <tr>
                 <label class="form-label" >Age</label>
                <td><input type="text" name="age" class="form-control" placeholder="Age" required/></td>
            </tr>
            </div>
            <div alight="left">
                 <tr>
                 <label class="form-label" >Gender</label>
                <td><input type="text" name="sex" class="form-control" placeholder="Gender" required/></td>
           		 </tr>
            </div>
            <div alight="left">
                 <tr>
                 <label class="form-label" >Contact</label>
                <td><input type="text" name="contact" class="form-control" placeholder="Contact No" required/></td>
            </tr>
            </div>
				<div alight="left">
                 <tr>
                 <label class="form-label" >Email</label>
                <td><input type="email" name="mail" class="form-control" placeholder="Email" required /></td>
            </tr>
            </div>
            <tr>
            <div alight="left">
                 <tr>
                 <label class="form-label" >Password</label>
                <td><input type="text" name="pswd" class="form-control" placeholder="Password" required /></td>
            </tr>
            </div>
            <br>
            <td colspan="2"><button type="submit" class="btn btn-info">Save</button> </td>
            </tr>
        </table>
    </form>
</div>
<div id="home" class="btn btn-outline-success" style="margin-left:25%;"><a href="home"><b>Home</b></a></div>
<hr>
<p>&copy; mrgns</p>
<hr>
</body>
</html>