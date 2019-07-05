<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
body  {
  background-image: url("images/attractive-backdrop-background-988872.jpg");
}
</style>
</head>
<body>
	
	<h1 align="center">Please LOGIN</h1>						
	<form  action="LoginServlet" method="post">
		<pre>							
								<label><b><font size="4" color="">User Name :</font></b></label><input type="text" name="userName"/><br/>			
		
		
		
								<label><b><font size="4" color="">Password  :</font></b></label><input align="middle" type="password" name="password"/><br/>
										
										
										
										<input  type="submit" value="Login"/></pre>
	</form><br/>
	
	<pre>
	
	
								  <b><font size ="4">new user? </font></b><a href="RegisterServlet" shape="circle"><b><font size="4">register</font></b></a>
									
									
									
									
									
									
							      	  <b><font size = "4">Copyright &copy; Rishith</font></b></pre>

</body>
</html>