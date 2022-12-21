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
<title>Session_Info</title>
</head>
<body>

	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>


	
	<h1>Help Desk Session</h1>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="moduleCode" value="${us.moduleCode}"/>
	<c:set var ="module" value="${us.module}"/>
	<c:set var ="topic" value="${us.topic}"/>
	<c:set var ="date" value="${us.date}"/>
	<c:set var ="time" value="${us.time}"/>
	<c:set var ="lecturer" value="${us.lecturer}"/>
	<c:set var ="platform" value="${us.platform}"/>
	<c:set var ="description" value="${us.description}"/>
	
	<tr>
		<td>Module Code</td>
		<td>${us.moduleCode}</td>
	</tr>
	
	<tr>
		<td>Module</td>
		<td>${us.module}</td>
	</tr>
	
	<tr>
		<td>Topic</td>
		<td>${us.topic}</td>
	</tr>
	
	<tr>
		<td>Date</td>
		<td>${us.date}</td>
	</tr>
	
		<tr>
		<td>Time</td>
		<td>${us.time}</td>
	</tr>
	
	<tr>
		<td>Conducted Lecturer</td>
		<td>${us.lecturer}</td>
	</tr>
	
	<tr>
		<td>Platform</td>
		<td>${us.platform}</td>
	</tr>
	
	<tr>
		<td>Description</td>
		<td>${us.description}</td>
	</tr>
	
	
	
	</c:forEach>
	</table>
	
	
	<c:url value="SMUpdateSession.jsp" var="usupdate">
	
	<c:param name ="moduleCode" value="${moduleCode}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="topic" value="${topic}"/>
	<c:param name ="date" value="${date}"/>
	<c:param name ="time" value="${time}"/>
	<c:param name ="lecturer" value="${lecturer}"/>
	<c:param name ="platform" value="${platform}"/>
	<c:param name ="description" value="${description}"/>
	</c:url>
	
	<a href = "${usupdate}">
	<input type="button" name="update" class="submit2" value="Update Session">
	</a><br>
	
	
	<c:url value="SMDeleteSession.jsp" var="usdelete">
	
	<c:param name ="moduleCode" value="${moduleCode}"/>
	<c:param name ="module" value="${module}"/>
	<c:param name ="topic" value="${topic}"/>
	<c:param name ="date" value="${date}"/>
	<c:param name ="time" value="${time}"/>
	<c:param name ="lecturer" value="${lecturer}"/>
	<c:param name ="platform" value="${platform}"/>
	<c:param name ="description" value="${description}"/>
	</c:url>
	
	<a href = "${usdelete}">
	<input type="button" name="delete" class="submit3" value="Delete Session">
	</a>

</body>
</html>