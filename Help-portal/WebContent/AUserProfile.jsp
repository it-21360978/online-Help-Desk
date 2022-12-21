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
<title>User_Profile</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	
	<h1>User Profile</h1>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="userId" value="${us.userId}"/>
	<c:set var ="name" value="${us.name}"/>
	<c:set var ="nic" value="${us.nic}"/>
	<c:set var ="email" value="${us.email}"/>
	<c:set var ="phone" value="${us.phone}"/>
	<c:set var ="gender" value="${us.gender}"/>
	<c:set var ="userCategory" value="${us.userCategory}"/>
	<c:set var ="password" value="${us.password}"/>
	
	<tr>
		<td>User ID</td>
		<td>${us.userId}</td>
	</tr>
	
	<tr>
		<td>User Category</td>
		<td>${us.userCategory}</td>
	</tr>
	
	<tr>
		<td>User Name</td>
		<td>${us.name}</td>
	</tr>
	
	<tr>
		<td>NIC</td>
		<td>${us.nic}</td>
	</tr>
	
		<tr>
		<td>Email</td>
		<td>${us.email}</td>
	</tr>
	
	<tr>
		<td>Contact Number</td>
		<td>${us.phone}</td>
	</tr>
	
	<tr>
		<td>Gender</td>
		<td>${us.gender}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	
	<c:url value="AUpdateUser.jsp" var="usupdate">
	
	<c:param name ="userId" value="${userId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="nic" value="${nic}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="gender" value="${gender}"/>
	<c:param name ="userCategory" value="${userCategory}"/>
	<c:param name ="password" value="${password}"/>
	</c:url>
	
	<a href = "${usupdate}">
	<input type="button" name="update" class="submit2" value="Update User">
	</a><br>
	
	
	<c:url value="ADeleteUser.jsp" var="usdelete">
	
	<c:param name ="userId" value="${userId}"/>
	<c:param name ="name" value="${name}"/>
	<c:param name ="nic" value="${nic}"/>
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="gender" value="${gender}"/>
	<c:param name ="userCategory" value="${userCategory}"/>
	<c:param name ="password" value="${password}"/>
	</c:url>
	
	<a href = "${usdelete}">
	<input type="button" name="delete" class="submit3" value="Delete User">
	</a>

</body>
</html>