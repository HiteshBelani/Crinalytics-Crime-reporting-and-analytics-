<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
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
		<center><font color="red" size="5">Invalid username or password</font></center>
		<% 
	}
	%>
<div class="login-box">
  <h1>Login</h1>
  <form action="User.jsp" autocomplete="off">
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" placeholder="Username"name="username" autocomplete="off">
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" placeholder="Password" name="password" autocomplete="off">
  </div>

  <input type="submit" class="btn" value="Sign in">
  </form>
  <form action="register.jsp">
  <input type="submit" class="btn" value="Sign up">
  </form>
</div>
  </body>
</html>

