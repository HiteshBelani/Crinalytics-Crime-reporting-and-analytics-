<%@ page import="java.sql.*,
 project.ConnectionProvider" %>
 <%
 String fname=request.getParameter("fname");
 String lname=request.getParameter("lname");
 String crime=request.getParameter("crime_name");
 String city=request.getParameter("city");
 String mobilenumber=request.getParameter("mobilenumber");
 String date=request.getParameter("date");
 String description=request.getParameter("description");

 try{
	 Connection con=ConnectionProvider.getCon();
	 PreparedStatement p=con.prepareStatement("insert into crime_report values(?,?,?,?,?,?,?)");
	 p.setString(1,fname );
	 p.setString(2,lname );
	 p.setString(3,mobilenumber );
	 p.setString(4,date );
	 p.setString(5,crime );
	 p.setString(6, city);
	 p.setString(7,description );
	
	 p.executeUpdate();
	 response.sendRedirect("report_crime.jsp?msg=valid");
 }
 catch(Exception e){
	 response.sendRedirect("report_crime.jsp?msg=invalid");
 }
 %>
 