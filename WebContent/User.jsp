<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,
 project.ConnectionProvider" %>
 
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>


<%
String usr=request.getParameter("username");
String passwd=request.getParameter("password");
System.out.println(passwd);
    	try{
    		
    		Connection con=ConnectionProvider.getCon();
    		if(con==null){
    			System.out.println("\nconnection not established");
    		}
    		PreparedStatement p=con.prepareStatement("select pwd from user where username='"+usr+"' and pwd='"+passwd+"'");
    		ResultSet rs=p.executeQuery();	
    		rs.next();
    		String link="report_crime.jsp",linkname="Report a Crime",link1="",linkname1="";
    		//String link="<a href=\"report_crime.jsp\" class=\"nav-links\">Report Crime</a>";
		    String getPass =rs.getString(1);
		    System.out.println("getPass="+getPass);
		    if(getPass.equals(passwd))
		    {
		    	if(usr.equals("police")){
		    		link="crime_report_list.jsp";
		    		linkname="View Reports";
		    		link1="prediction.jsp";
		    		linkname1="View Prediction";
		    		
		    		//link="<a href=\"crime_report_list.jsp\" class=\"nav-links\">View Crime Reports</a>";
		    	}
		    	System.out.println(link);
		    	application.setAttribute("Link", link);
	    		application.setAttribute("Linkname", linkname);
	    		application.setAttribute("Link1", link1);
	    		application.setAttribute("Linkname1", linkname1);
		    	
// 		    	<c:set var="Link" value="<%=link " scope="application" /> --
//<%-- 		    	<c:set var="Linkname" value="<%=linkname " scope="application" />  --
		     
		    	response.sendRedirect("home.jsp");
		    }
		   else{
			response.sendRedirect("index.jsp?msg=Invalid");
		}
    
    }
       
    	catch(Exception e){
    		 response.sendRedirect("index.jsp?msg=invalid");
    		// System.out.println(e);
    	 }
	

		    
		    
%>
</body>
</html>