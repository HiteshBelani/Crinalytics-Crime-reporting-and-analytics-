
   
    <%@ page import="java.sql.*,
 project.ConnectionProvider" %>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link rel="stylesheet" type="text/css" href="start_analysis.css">
     <style>
table {
  width:50%;
margin-left: auto;
margin-right: auto;
height: 50px;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: center;
  font-size: 15px;
  padding-right: 10px
}
 tr:nth-child(even) {
  background-color: #eee;
}
 tr:nth-child(odd) {
 background-color: #fff;
}
 th {
  background-color: black;
  color: white;
}
.tdesign{
    margin-top: 100px;
}
.tdesign p{
    font-size: 18px;
}
</style>
    
    
</head>

<body>
<div>
    <header>
        <div id="top-header">
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
            <!--                </nav>-->
        </div>
    </div>

        <nav class="navbar navbar-expand-md">
            <div class="container">
                <div class="row">
                    
                       
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#collapsenavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    
                        
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
           		    		//a
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
   
    <section id="headings" class="heading">
        <div class="row">
            <div class="container crimeheading">
            <% String crime=request.getParameter("crime");
            String year=request.getParameter("year"); %>
            <br>
            <br>
            <br>
                <center>
                <p>
                 <h4>Citywise Crime rate of <%=crime %> for <%=year %></h4>
                </p>
                </center>
            <br>
           
            </div>
        </div>

    </section>
     
			
<%
//String crime=request.getParameter("crime");
//String year=request.getParameter("year");
try{
	 //year="2008";
	Connection con=ConnectionProvider.getCon();
	if(con==null){
		System.out.println("\nconnection not established");
	}
	PreparedStatement p=con.prepareStatement("select * from "+year+"_crimewise_analysis where crime_name='"+crime+"' and year='"+year+"'");
	System.out.println(p);
	ResultSet rs=p.executeQuery();	
	while(rs.next()){
		System.out.println(rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
		%>
	<div class='tableauPlaceholder' id='<%=rs.getString(3)%>'
		style='position: relative'>
		<noscript>
			<a href='#'><img alt='Sheet 1 '
				src= '<%=rs.getString(4)%>'
				style='border: none' /></a>
		</noscript>
		<object class='tableauViz' style='display: none;'>
			<param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />
			<param name='embed_code_version' value='3' />
			<param name='site_root' value='' />
			<param name='name' value='<%=rs.getString(5)%>'/>
			<param name='tabs' value='no' />
			<param name='toolbar' value='yes' />
			<param name='static_image'
				value='<%=rs.getString(6)%>' />
			<param name='animate_transition' value='yes' />
			<param name='display_static_image' value='yes' />
			<param name='display_spinner' value='yes' />
			<param name='display_overlay' value='yes' />
			<param name='display_count' value='yes' />
			<param name='language' value='en-US' />
		</object>
	</div>
	<script type='text/javascript'>
		var divElement = document.getElementById("<%=rs.getString(3)%>");
		var vizElement = divElement.getElementsByTagName('object')[0];
		vizElement.style.width = '95%';
		vizElement.style.height = (divElement.offsetWidth * 0.40) + 'px';
		var scriptElement = document.createElement('script');
		scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';
		vizElement.parentNode.insertBefore(scriptElement, vizElement);
	</script>
	<%
	}
	
}
catch(Exception e){
	System.out.println(e);
}
%>
<%--         <%@ page import="  java.io.File,   --%>
<%--  java.io.FileInputStream,   --%>
<%--  java.io.IOException,    --%>
<%--  org.apache.poi.ss.usermodel.Cell,   --%>
<%--  org.apache.poi.ss.usermodel.FormulaEvaluator, --%>
<%--  org.apache.poi.ss.usermodel.Row  "%> --%>
<br>
<br>
<br>
<center><p><h4>Casewise Ranking of Cities for <%=crime %> for <%=year %></p></h4></center>
<br>

<center>
<table id="customers">
<tr>
<th><center>Cities</center></th>
<th><center>Cases<center></th>
<th><center>Ranking<center></th>
</tr>
<%
 try {
        //obtaining input bytes from a file 
        Connection con=ConnectionProvider.getCon();
	PreparedStatement p1=con.prepareStatement("select city,"+crime+"_c,"+crime+" from "+year+"_crimewise order by city");
	ResultSet rs1=p1.executeQuery();	
	
	while(rs1.next()){
	%>
<tr><td><%=rs1.getString(1) %></td>
<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(3) %></td>
</tr>

 <% 
	}  
 }
catch(Exception  e){
System.out.println(e);
}
%>
</tr>
</table>
</center>
    </body>
</html>
