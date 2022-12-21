<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "css/login.css" />
<link rel="icon" type="image/png" sizes="16*16" href="images/logo2.png">
<meta charset="ISO-8859-1">
<title> Home Page </title>
</head>
<body>
	<div class="productData">
	<!--......................................Header Part.......................................................................... -->
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>
		
	<!--.............................................Main Navigation Buttons......................................................... -->
	<div class="navibuttons">
	<button style="width:150px;" onclick="#">Home</button>
	<button style="width:150px;">Subjects</button>
	<button style="width:150px;">About Us</button>
	<button style="width:150px;">FAQ</button>
	</div>
	
	<!--............................................Image............................................................................. -->
	<div id="wallpaper">
	<img src="images/sliit2.jpg" height="500" width="80%" align="right">
	</div>
	<br> <br> <br>
	<!--.............................................Log in Navigation Buttons.......................................................... -->
	<div class="navibuttons2">
	<button id="bt1" onclick="document.getElementById('id01').style.display='block'" style="width:150px;"><b>Administrator</b></button><br><br>
	<button id="bt2" onclick="document.getElementById('id02').style.display='block'" style="width:150px;"><b>Student</b></button><br><br>
	<button id="bt3" onclick="document.getElementById('id03').style.display='block'" style="width:150px;"><b>Lecturer</b></button><br><br>
	<button id="bt4" onclick="document.getElementById('id04').style.display='block'" style="width:150px;"><b>Staff</b></button>
	</div>
	
	
	<br><br><br><br><br><br><br><br><br>
	<!--.............................................Description ....................................................................... -->
	<div id = "discription">
	<h4 style="color: black; font-family: Gotham, 'Helvetica Neue', Helvetica, Arial, 'sans-serif';">Welcome to SLIIT HelpDesk Services
	If you are seeking for help for difficult modules Please Sign in with your USER ID & PASSWORD and send a request</h4>

	<hr >

		<!--.............................................Footer.......................................................... -->
		<table id="footerwidth">
		<tr>
        <th><h3>Information</h3></th>
        <th><h3>Support</h3></th>
        </tr>
		<tr>
		<td id="data1">
			<ul class="no-bullets" >
			<li><a style="color:black" href="#" >Blog</a></li>	
			<li><a style="color:black"href="#" >Our team</a></li>
			<li><a style="color:black"href="#" >Terms and Conditions</a></li>
	     	</ul>  </td>
	    <td id="data1">
			<ul class="no-bullets" >
			<li><a style="color:black"href="#" >Fees</a></li>	
			<li><a style="color:black"href="#" >Special Education Needs</a></li>
			<li><a style="color:black"href="#" >Benefits</a></li>
	     	</ul>  </td>
			</tr>
			</table>
			
			<div class="footer">
				<a href="https://www.facebook.com"> <img src="images/facebook.png"> </a>
			    <a href="https://www.instagram.com/"><img src="images/instagram.png"></a>
			    <a href="https://www.twitter.com"><img src="images/twitter.png"></a>
			</div>
			<hr>
		
		<div class="footer">	
		<h4 style="color: whitesmoke; font-family: Gotham, 'Helvetica Neue', Helvetica, Arial, 'sans-serif';"><br>
		Copyright © SLIIT All rights reserved.</h4></div>
		<br>
	
	
<!--.............................................Administrator Log in Part............................................................................. -->		
<div id="id01" class="modal">
  
  <form class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avater.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
    
      <input type="text" placeholder="Enter AdminID" name="uid" required>


      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <a href ="AdminDashboard.jsp"><button type ="button" class="button">Login</button></a>

    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>	


<!--.............................................Student Login in Part............................................................................. -->	
<div id="id02" class="modal">
  
  <form class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avater.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <input type="text" placeholder="Enter UserID" name="uid" required>

      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <a href ="StudentDashboard.jsp"><button type ="button" class="button">Login</button></a>

    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>


<!--.............................................Teacher Login in Part............................................................................. -->	
<div id="id03" class="modal">
  
  <form class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avater.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <input type="text" placeholder="Enter UserID" name="uid" required>

      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <a href ="TDashboard.jsp"><button type ="button" class="button">Login</button></a>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>


<!--.............................................Staff Member Login in Part............................................................................. -->	
<div id="id04" class="modal">
  
  <form class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avater.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <input type="text" placeholder="Enter UserID" name="uid" required>

      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <a href ="SMDashboard.jsp"><button type ="button" class="button">Login</button></a>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

  
  </div>

</body>
</html>