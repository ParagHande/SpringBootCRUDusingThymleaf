<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>

<html>
<head>
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
	<meta charset="ISO-8859-1">
	<title>Update page</title>
</head>
<body>
	<h2>Please fill below form</h2>
	<form action="updateStudent" method="post" >
		<label>Roll Number </label><input type="text" name="rollNo" 	 value="${newStudent.rollNo}">		<br><br>
		<label>First Name  </label><input type="text" name="fName" 		 value="${newStudent.fName}">		<br><br>
		<label>Last Name   </label><input type="text" name="lName" 		 value="${newStudent.lName}">		<br><br>
		<label>Current Year</label><input type="text" name="currentYear" value="${newStudent.currentYear}"> <br><br>
		<button type="submit">Update</button>
	</form> 
</body>
</html>