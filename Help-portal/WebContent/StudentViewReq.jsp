<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href ="css/admin.css" />
<style>
Body  
{  
background-color: #ccffff;
}  

table {
  font-family: arial, sans-serif;
  width: 50%;
}

td {
  text-align: left;
  padding: 8px;
}
</style>
<meta charset="ISO-8859-1">
<title>View_Request</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	
	<h1>My Request</h1>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="sId" value="${us.sId}"/>
	<c:set var ="name" value="${us.name}"/>
	<c:set var ="faculty" value="${us.faculty}"/>
	<c:set var ="batch" value="${us.batch}"/>
	<c:set var ="module" value="${us.module}"/>
	<c:set var ="lesson" value="${us.lesson}"/>
	<c:set var ="reqDate" value="${us.reqDate}"/>
	
	<tr>
		<td>Student ID</td>
		<td>${us.sId}</td>
	</tr>
	
	<tr>
		<td>Student Name</td>
		<td>${us.name}</td>
	</tr>
	
	<tr>
		<td>Faculty</td>
		<td>${us.faculty}</td>
	</tr>
	
	<tr>
		<td>Batch</td>
		<td>${us.batch}</td>
	</tr>
	<tr>
		<td>Module</td>
		<td>${us.module}</td>
	</tr>
	<tr>
		<td>Lesson</td>
		<td>${us.lesson}</td>
	</tr>
	
	<tr>
		<td>Date Requested</td>
		<td>${us.reqDate}</td>
	</tr>
	
	
	
	</c:forEach>
	</table>
	
	<c:url value="StudentUpdateReq.jsp" var="usupdate">
	
	<c:param name ="sId" value="${sId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="faculty" value="${faculty}"/>
	<c:param name ="batch" value="${batch}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="lesson" value="${lesson}"/>
	<c:param name ="reqDate" value="${reqDate}"/>
	</c:url>
	
	<a href = "${usupdate}">
	<input type="button" name="update" class="submit2" value="Update My Request">
	</a><br>
	
	
	<c:url value="StudentDeleteReq.jsp" var="usdelete">
	
	<c:param name ="sId" value="${sId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="faculty" value="${faculty}"/>
	<c:param name ="batch" value="${batch}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="lesson" value="${lesson}"/>
	<c:param name ="reqDate" value="${reqDate}"/>
	</c:url>
	
	<a href = "${usdelete}">
	<input type="button" name="delete" class="submit3" value="Delete My Request">
	</a>

</body>
</html>