<%@ page import="java.sql.*,
 project.ConnectionProvider" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>


</head>
<body style="background:#E0FFFF;">

 <%
 String id=request.getParameter("id");
 String name=request.getParameter("name");
 String father=request.getParameter("father");
 String mother=request.getParameter("mother");
 String mobilenumber=request.getParameter("mobilenumber");
 String gender=request.getParameter("gender");
 String email=request.getParameter("email");
 String bloodgroup=request.getParameter("bloodgroup");
 String address=request.getParameter("address");
 try{
	 Connection con=ConnectionProvider.getCon();
	 PreparedStatement p=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
	 p.setString(1,id );
	 p.setString(2,name );
	 p.setString(3,father );
	 p.setString(4,mother );
	 p.setString(5,mobilenumber );
	 p.setString(6, gender);
	 p.setString(7,email );
	 p.setString(8,bloodgroup );
	 p.setString(9, address);
	 p.executeUpdate();
	 response.sendRedirect("addNewDonor.jsp?msg=valid");
 }
 catch(Exception e){
	 response.sendRedirect("addNewDonor.jsp?msg=invalid");
 }
 %>
 
        finally {   
//        Step 6: Close all resources
            try {
                if (rs != null) {
                    rs.close();
                }
                
                
                if (p != null) {
                    p.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println("Exception occured while releasing resources");
            }

        }
            %>
            <% 

response.sendRedirect("index1.html");
%>
<%--<jsp:forward page=></jsp:forward>--%>

</body>
</html>