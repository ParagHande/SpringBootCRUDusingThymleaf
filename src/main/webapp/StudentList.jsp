<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <%-- <%@ page isELIgnored = "false" %> --%>
<!DOCTYPE html>
<html>
<head>
<style>
		table, th, td {
		  text-align:left;
		  border: 1px solid black;
		  border-collapse: collapse;
		  margin-left: auto;
  		  margin-right: auto;
		}
		table{
		width : 500px;
		}
		body{
		  text-align:center;
		}
</style>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>
		<h1>List Of Student</h1>
		<div>
			<table border="1">
			    <thead>
					<tr>
						<th>User Id</th>       
						<th>First Name</th>   
						<th>Last Name</th>  
						<th>Current Year</th> 
					</tr>
				 </thead>
				 <tbody>
					<c:forEach items="${result}" var="e">
						<tr>
							<td>${e.rollNo}</td>
							<td>${e.fName}</td>   
							<td>${e.lName}</td> 
							<td>${e.currentYear}</td> 
							<td><a href="/editStudent/${e.rollNo}"  >Edit   </a></td>
							<td><a href="/deleteStudent/${e.rollNo}">Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<h2><a href = "/">Home Page</a></h2>
		
</body>
</html>