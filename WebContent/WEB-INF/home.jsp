<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
<style>
body  {
  background-image: url("images/atmosphere-background-bright-19670.jpg");
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 10%;
}
</style>
</head>
<body>

	<%
		String userName = (String) session.getAttribute("USERNAME");
	
	%>

	<h1 align="center">Welcome <%= userName %></h1><br/>
	<pre>
	
	<a href="OrderServlet"><b><font size="4">My Orders</font></b></a>							  <a href="ShowCart"><b><font  size="4">Cart</font></b></a>									<a href ="LogoutServlet"><b><font size="4">Logout</font></b></a>
	
	
	</pre>
	
	
	<img  alt="MicroMax Mobile" src="images/micromax-mobile.jpg" width="100" height="100" class="center"/><pre>									 <label>Micromax Mobile</label> <a href="CartServlet?pid=micromax&price=3500">Add to Cart</a></pre><br/><br/><br/>
	
	<img alt="Dell laptop" src="images/dell-lappie.jpg" width="100" height="100" class="center"/><pre>									<label>Dell laptop</label> <a href="CartServlet?pid=dell234&price=35000">Add to Cart</a></pre><br/><br/><br/>
	
	<img alt="Raspberry pi4" src="images/raspberry4.jpg" width="100" height="100" class="center"/><pre>									<label>Raspberry pi 4</label> <a href="CartServlet?pid=raspberry4&price=3650">Add to Cart</a></pre>
	<br/><br/><br/>
	
	<img alt="camera" src="images/camera.jpg" width="100" height="100" class="center"/><pre>									<label>Camera</label> <a href="CartServlet?pid=camera45569&price=1800">Add to Cart</a></pre>
	<br/><br/><br/>
	
	<img alt="LCD display" src="images/lcdDisplay.jpg" width="100" height="100" class="center"/><pre>									<label>LCD display</label> <a href="CartServlet?pid=lcd2502&price=600">Add to Cart</a></pre>
	<br/><br/><br/>
	
</body>
</html>