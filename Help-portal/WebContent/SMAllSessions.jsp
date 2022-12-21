<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "admin123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" type = "text/css" href ="css/admin.css" />
<style>
Body  
{  
background-color: #ccffff;
}  
a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}
a:hover {
  background-color: #ddd;
  color: black;
}
.previous {
  background-color: #f1f1f1;
  color: black;
}
</style>
</head>
<body>

<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>

	<div align="center">
	<h1>ALL Help Desk Sessions</h1>

	<table border="1" id="users">

		<tr>

			<td><b>Module ID</b></td>
			<td><b>Module</b></td>
			<td><b>Topic</b></td>
			<td><b>Date</b></td>
			<td><b>Time</b></td>
			<td><b>Conducted Lecturer</b></td>
			<td><b>Platform</b></td>
			<td><b>Description</b></td>

		</tr>
	
	
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from time_table";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


		<tr>
			<td><b><%=resultSet.getString("moduleCode") %></b></td>
			<td><b><%=resultSet.getString("module") %></b></td>
			<td><%=resultSet.getString("topic") %></td>
			<td><%=resultSet.getString("date") %></td>
			<td><%=resultSet.getString("time") %></td>
			<td><%=resultSet.getString("lecturer") %></td>
			<td><%=resultSet.getString("platform") %></td>
			<td><%=resultSet.getString("description") %></td>
	
		</tr>
	
	
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

	</table>
			
			<br><br>
	 		<a href="SMDashboard.jsp" class="previous">&laquo; Staff Dashboard</a>
	 		<br><br>
	
	</div>
</body>
</html>