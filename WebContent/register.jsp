<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
  <div class="neon">
  <center><h1>CRINALYTICS</h1><center>
  </div>
   <%
	String message=request.getParameter("msg");
	if("Invalid".equalsIgnoreCase(message)){
		%>
		<center><font color="red" size="5">username already exists!! Try something else</font></center>
		<% 
	}
	%>
<div class="login-box">
    <form action="register_action.jsp" method="post">
  <h1>Register</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="First Name" name="fname">
  </div>

  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Last Name" name="lname">
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Username" name="username">
  </div>
  <div class="textbox">
    <i class="fas fa-envelope"></i>
    <input type="email" placeholder="email" name="email">
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Password" name="password">
  </div>

  <input type="submit" class="btn" value="Sign up">
  </form>
</div>
  </body>
</html>
