<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log out</title>
</head>
<body>
<%
application.setAttribute("Link", "");
application.setAttribute("Linkname", "");
response.sendRedirect("index.jsp");
%>
</body>
</html>