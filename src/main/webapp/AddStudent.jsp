<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registration page</title>
	<style type="text/css">
		label{
		    display: inline-block;
		    float: left;
		    clear: left;
		    width: 100px;
		    text-align: left; 
		}
		input {
		  display: inline-block;
		  float: left;
		}
	</style>

</head>
<body>
	<h2>Please fill below form</h2>
	<form action="saveStudent" method="post" >
		<label>First Name </label><input type="text" name="fName">	<br><br>
		<label>Last Name  </label><input type="text" name="lName">	<br><br>
		<label> Current Year  </label><input type="text" name="currentYear"><br><br>
		<button type="submit">Save</button>
	</form>
	
	
</body>
</html>