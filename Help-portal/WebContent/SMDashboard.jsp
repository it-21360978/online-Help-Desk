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
</style>
<meta charset="ISO-8859-1">
<title>Staff_Dashboard</title>
</head>
<body>
	
	<!--......................................Header Part.......................................................................... -->
	<table  id="footerwidth">
	<tr><td>
     
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>
	</td>
	<td align="right">
	<img src="images/avater.png" height="50" width="50" align="right">
	<c:forEach var="adm" items ="${admDetails}" >
			<br>${adm.adminId}<br>
				${adm.name}<br><br>
	</c:forEach>
	<br>
	<a href="Home.jsp">
	<button  type="submit"  style="background-color:#b3d9ff;">LOG OUT</button>
	</a>
	</td>
	</tr>
	</table>
	
    <div align="center">
	<h1>STAFF DASHBOARD</h1>
	
	<a href ="SMSessionInsert.jsp">
	<button type ="button" class="button">Add A New Session</button>
	</a>
	
	<a href ="SMSearchSession.jsp">
	<button type ="button" class="button">View Session</button>
	</a>
	
	<a href ="SMAllSessions.jsp">
	<button type ="button" class="button">List Of All Help Desk Session</button>
	</a>
	
	<a href ="SMAllAvailability.jsp">
	<button type ="button" class="button">List Of All Teacher's Availability</button>
	</a>
	
	<a href ="SMStudentAllRequest.jsp">
	<button type ="button" class="button">List Of All Student's Requests</button>
	</a>
	
</div>

</body>
</html>