<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<!DOCTYPE html>
<html>

<head>
    <title>Crinalytics</title>
    <link rel="stylesheet" type="text/css" href="style_report.css">
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
           		    		
                                %>
                               
                                 <li>
                                    <a href="<%=h %>" class="nav-links"><%=n %></a>
                                </li>
                                <li>
                                    <a href="start_analysis.jsp" class="nav-links">Start Analysis</a>
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
  <div class="reportsec">
      <h2>
          REPORT CRIME
      </h2>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<center> <font color="red" size="5">Crime Reported Successfully!!</font></center>
<%} %>
<%

if("invalid".equals(msg)){
%>
<center> <font color="red" size="5">Something went wrong. Try Again!!</font></center>
<%} %>

<form action="report_crime_action.jsp">
  <label for="fname"><strong>First name:</strong></label><br>
  <input type="text" id="fname" name="fname" required><br><br>
  <label for="lname"><strong>Last name:</strong></label><br>
  <input type="text" id="lname" name="lname" required><br><br>

  <label for="fname"><strong>Mobile number:</strong></label><br>
  <input type="text" id="mobilenumber" name="mobilenumber" required><br><br>
  
 <label for="date"><strong>Date of Crime:</strong></label>
  <input type="date" id="date" name="date" required><br><br>
  
    <label for="crime_name"><strong>Select crime:</strong></label>
    <select name="crime_name" id="crime_name" required>
      <option value="Murder">Murder</option>
      <option value="Attempt_to_Commit Murder">Attempt to Commit Murder</option>
      <option value="Rape">Rape</option>
      <option value="Kidnapping_Abduction">Kidnapping & Abduction</option>
      <option value="Dacoity">Dacoity</option>
      <option value="Preparation_Assembly_for_Dacoity">Preparation & Assembly for Dacoity</option>
      <option value="Robbery">Robbery</option>
      <option value="Burglary ">Burglary </option>
      <option value="Theft"> Theft</option>
      <option value="Riots">Riots</option>
      <option value="Criminal_Breach_of_Trust">Criminal Breach of Trust</option>
      <option value="Cheating">Cheating</option>
      <option value="Counterfeiting">Counterfeiting</option>
      <option value="Arson">Arson</option>
      <option value="Hurt">Hurt</option>
      <option value="Dowry_Deaths">Dowry Deaths</option>
      <option value="Molestation">Molestation</option>
      <option value="Sexual_Harassment">Sexual Harassment</option>
      <option value="Cruelty_by_Husband_and_Relatives">Cruelty by Husband and Relatives</option>
      <option value="Importation_of_Girls">Importation of Girls</option>
      <option value="Causing_Death_by_Negligence">Causing Death by Negligence</option>
      <option value="Other_IPC_Crimes">Other IPC Crimes</option>
      
      
    </select>
    
   <br><br> 
  

  
    <label for="city"><strong>Select city:</strong></label>
    <select name="city" id="city" required>
      <option value="Agra">Agra</option>
      <option value="Ahmedabad">Ahmedabad</option>
      <option value="Allahabad">Allahabad</option>
      <option value="Amritsar">Amritsar</option>
      <option value="Bengaluru">Bengaluru</option>
      <option value="Bhopal">Bhopal</option>
      <option value="Chennai">Chennai</option>
      <option value="Coimbatore">Coimbatore</option>
      <option value="Delhi (city)">Delhi (city)</option>
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
    
    
  <br><br>

           

           


 
  <label for="description"><strong>Add details:</strong></label><br>
 
      
             <textarea rows="3" cols="85" name="description" required></textarea> <br><br>
        
       

                <input type="submit" value="Submit">
</form> 


</div>

   
</body>

</html>