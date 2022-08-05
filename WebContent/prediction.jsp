<%@ page import="java.sql.*,
 project.ConnectionProvider" %>

<html>
<head>
<title>Crinalytics</title>
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


<form action="#" method="post">
<div class="row selection-col">
    <div class="col col-lg-6 abc ">
        <div class="prediction">
            
                <div class="dropdown">
                    
                        <label for="city"><strong>Select city:</strong></label>
                        <select name="city" id="city" required>
                        	<option value="all">Click to Select All Cities</option>
                            <option value="Agra">Agra</option>
                            <option value="Ahmedabad">Ahmedabad</option>
                            <option value="Allahabad">Allahabad</option>
                            <option value="Amritsar">Amritsar</option>
                            <option value="Bangalore">Bangalore</option>
                            <option value="Bhopal">Bhopal</option>
                            <option value="Chennai">Chennai</option>
                            <option value="Coimbatore">Coimbatore</option>
                            <option value="Delhi (city)">Delhi</option>
                            <option value="Dhanbad">Dhanbad</option>
                            <option value="Faridabad">Faridabad</option>
                            <option value="Hyderabad">Hyderabad</option>
                            <option value="Indore">Indore</option>
                            <option value="Jabalpur">Jabalpur</option>
                            <option value="Jaipur">Jaipur</option>
                            <option value="Jamshedpur">Jamshedpur</option>
                            <option value="Kanpur">Kanpur</option>
                            <option value="Kochi">Kochi</option>
                            <option value="Kolkata">Kolkata</option>
                            <option value="Lucknow">Lucknow</option>
                            <option value="Ludhiana">Ludhiana</option>
                            <option value="Madurai">Madurai</option>
                            <option value="Meerut">Meerut</option>
                            <option value="Mumbai">Mumbai</option>
                            <option value="Nagpur">Nagpur</option>
                            <option value="Nasik">Nasik</option>
                            <option value="Patna">Patna</option>
                            <option value="Pune">Pune</option>
                            <option value="Rajkot">Rajkot</option>
                            <option value="Surat">Surat</option>
                            <option value="Vadodara">Vadodara</option>
                            <option value="Varanasi">Varanasi</option>
                            <option value="Vijayawada">Vijayawada</option>
                            <option value="Vishakhapatnam">Vishakhapatnam</option>
                            
                          </select>



                    
                </div>
           
           
        </div>
    </div>
    <div class="row"></div>
    <div class="col col-lg-6 abc">
        <div class="prediction">
            
                <div class="dropdown">
                    
                        <label for="crime_name"><strong>Select Crime:</strong></label>
                        <select name="crime_name" id="crime_name" required>
                        	<option value="all">Click to Select All Crimes</option>
                            <option value="Murder">Murder</option>
                            <option value="Attempt to Commit Murder">Attempt to Commit Murder</option>
                            <option value="Rape">Rape</option>
                            <option value="Kidnapping">Kidnapping & Abduction</option>
                            <option value="Dacoity">Dacoity</option>
                            <option value="Preparation & Assembly for Dacoity">Preparation & Assembly for Dacoity</option>
                            <option value="Robbery">Robbery</option>
                            <option value="Burglary ">Burglary </option>
                            <option value="Theft"> Theft</option>
                            <option value="Riots">Riots</option>
                            <option value="Criminal Breach of Trust">Criminal Breach of Trust</option>
                            <option value="Cheating">Cheating</option>
                            <option value="Counterfeiting">Counterfeiting</option>
                            <option value="Arson">Arson</option>
                            <option value="Hurt">Hurt</option>
                            <option value="Dowry Deaths">Dowry Deaths</option>
                            <option value="Molestation">Molestation</option>
                            <option value="Sexual Harassment">Sexual Harassment</option>
                            <option value="Cruelty by Husband and Relatives">Cruelty by Husband and Relatives</option>
                            <option value="Importation of Girls">Importation of Girls</option>
                            <option value="Causing Death by Negligence">Causing Death by Negligence</option>
                            <option value="Other_IPC_Crimes">Other IPC Crimes</option>
                            <option value="Sexual_Harassment">Total Cognizable Crimes Under IPC</option>
                            <option value="Cruelty by Husband and Relatives">Cruelty by Husband and Relatives</option>
                            <option value="Importation of Girls">Importation of Girls</option>
                            <option value="Causing Death by Negligence">Causing Death by Negligence</option>
                            <option value="Other IPC Crimes">Other IPC Crimes</option>
                            
                            
                          </select>

                      
                    </div>
                </div>
           
           
        </div>
    </div>

    <div class="row">

   
    <div class="col  abcd ">
        <div class="prediction">

            <button type="submit" class="btn text-white btn-lg btn-outline-info"> View Prediction</button>       
        </div>
    </div>
</div>       


</form>



<div class="table-sec">
  
<br><br><br>
            
            
            <table class="table" style="width:100%">
              <tr>
                <td><strong>Name of City</strong></td>
                <td><strong>Type of Crime:</strong></td>
                <td><strong>Predicted Cases:</strong> </td>

                
              </tr>
             <%
try{
	String crime_name=request.getParameter("crime_name");
	String city=request.getParameter("city");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement p;
	if(crime_name.equals("all")&&city.equals("all"))
		p=con.prepareStatement("select * from prediction order by city asc,predicted_cases desc");
	else if(crime_name.equals("all"))
		p=con.prepareStatement("select * from prediction where city='"+city+"' order by predicted_cases desc");
	else if(city.equals("all"))
		p=con.prepareStatement("select * from prediction where crime='"+crime_name+"' order by predicted_cases desc");
	else
	 p=con.prepareStatement("select * from prediction where city='"+city+"' and crime like'"+crime_name+"%'");
	ResultSet rs=p.executeQuery();	
	while(rs.next()){
		%>
		<tr>
	<td><%=rs.getString(1) %></td>	
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getInt(3)%></td>
	</tr>
	<% 
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
            </table>
            
           

    </div>





</body>
</html>