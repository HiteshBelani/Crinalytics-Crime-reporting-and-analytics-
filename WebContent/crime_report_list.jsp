<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,
 project.ConnectionProvider" %>
<!DOCTYPE html>
<html>

<head>
   <title>Crinalytics</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="prediction.css">
    <link rel="stylesheet" type="text/css" href="start_analysis.css">
   
   
</head>
<head>
    <style>
    #customers {
      font-family: Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    
    #customers td, #customers th {
      border: 1px solid #ddd;
      padding: 8px;
    }
    
    #customers tr:nth-child(even){background-color: #f2f2f2;}
    
    #customers tr:hover {background-color: #ddd;}
    
    #customers th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: #0483aa;
      color: white;
    }
    </style>
    </head>
    <body>
 <div>
 <header>
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-10 contact-detail">
                                               <a href="#" class="navbar-company" style="color:white">Crinalytics</a>  
                    </div>
                    <div class="col col-lg-2 social-detail">
                        <ul>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-facebook-square"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-linkedin-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                </nav>
            </div>
            <nav class="navbar navbar-expand-md">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-8">
                          
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#collapsenavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        
                        <div class="collapse-navbar-collapse text-centre nav-items" id="collapsenavbar">
                            <ul class="navbar-nav ml-auto">
                                 <li>
                                    <a href="home.jsp" class="nav-links"> Home</a>
                                </li>
                                
                                <%
                               // String n="<a href=\"crime_report_list.jsp\" class=\"nav-links\">View Crime Reports</a>";
                               String h=application.getAttribute("Link").toString();
                               String n=application.getAttribute("Linkname").toString();
                               String h1=application.getAttribute("Link1").toString();
                               String n1=application.getAttribute("Linkname1").toString();
           		    		
                                %>
                               
                                 <li>
                                    <a href="<%=h %>" class="nav-links"><%=n %></a>
                                </li>
                                <li>
                                    <a href="start_analysis.jsp" class="nav-links">Start Analysis</a>
                                </li>
                                <li>
                                    <a href="<%=h1 %>" class="nav-links"><%=n1 %></a>
                                </li>
                                <li>
                                    <a href="#" class="nav-links"> FAQs</a>
                                </li>
                                
                                <li>
                                    <a href="logout.jsp" class="nav-links"> Log out</a>
                                </li>
                            </ul>
                        </div>
                
                </div>
            </div>
        </nav>
    </header>
</div>


    <section id="about" class="bg-color">
        <div class="container">
            <div class="row">
                <div class="about-section"></div>
                
            </div>
           

        </div>
    </section>
    <h1>Crime Reports</h1>
    
    <table id="customers">
      <tr>
        <th>First name</th>
        <th>Last name</th>
        <th style="width:150px">Mobile number</th>
         <th style="width:150px">Date of Crime</th>
        <th>Type of crime</th>
        <th>City</th>
        <th style="width:500px">Details</th>
      </tr>
      <tr>
<%
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement p=con.prepareStatement("select * from crime_report order by date desc");
	ResultSet rs=p.executeQuery();	
	while(rs.next()){
		%>
		<tr>
	<td><%=rs.getString(1) %></td>	
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getDate(4) %></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><%=rs.getString(7)%></td>
	</tr>
	<% 
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
<!--       <tr> -->
<!--         <td>Grishma </td> -->
<!--         <td>Soni</td> -->
<!--         <td>9922770014</td> -->
<!--         <td>Murder</td> -->
<!--         <td>Nagpur</td> -->
<!--         <td>DEtails</td> -->
        
<!--       </tr> -->
<!--       <tr> -->
<!--         <td>Abhishek</td> -->
<!--         <td>Verma</td> -->
<!--         <td>9921673882</td> -->
<!--         <td>Theft</td> -->
<!--         <td>Agra</td> -->
<!--         <td>DEatils</td> -->
        
<!--       </tr> -->
<!--       <tr> -->
<!--         <td>Hitesh</td> -->
<!--         <td>Belani</td> -->
<!--         <td>8517862543</td> -->
<!--         <td>Rape</td> -->
<!--         <td>Mumbai</td> -->
<!--         <td>Deatils</td> -->
        
<!--       </tr> -->
<!--       <tr> -->
<!--         <td>Riya</td> -->
<!--         <td>Singh</td> -->
<!--         <td>9976873432</td> -->
<!--         <td>Robbery</td> -->
<!--         <td>Allahbad</td> -->
<!--         <td>Deatils</td> -->
        
<!--       </tr><tr> -->
<!--         <td>Akansha </td> -->
<!--         <td>Rane</td> -->
<!--         <td>8234561234</td> -->
<!--         <td>hurt</td> -->
<!--         <td>Amritsar</td> -->
<!--         <td>Details</td> -->
        
<!--       </tr> -->

      
    </table>
    
    
</body>

</html>