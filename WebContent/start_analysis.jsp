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

    <div class="heading1">
        <h1>CRIME WISE ANALYSIS</h1>
    </div>    
    
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Murder 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Murder">
                            </form>
                        
                            
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Dacoity 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option >Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Dacoity">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Rape
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Rape">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Rape- Others 
                            </h3>
                            <p><form action="crimewise.jsp">
                               <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Rape">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Kidnapping & Abduction - Total 
                            </h3>
                            <p><form action="crimewise.jsp">
                               <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Kidnapping">
                            </form>
                        
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Attempt to Commit Murder  
                            </h3>
                            <p><form action="crimewise.jsp">
                               <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Attempt_to_murder">
                            </form>
                        </div>
                    </div>
                </div>
                
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Preparation & Assembly for Dacoity  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Preparation & Assembly for Dacoity">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Criminal Breach of Trust  
                            </h3>
                            <p><form action="crimewise.jsp">
                               <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Criminal_Breach_of_Trust">
                            </form>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>Burglary 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Burglary">
                            </form>
                    
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Theft - Total
                            </h3>
                            <p><form action="crimewise.jsp">
                               <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Theft">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>Riots  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()">
                                	<option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Riots">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Robbery
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Robbery">
                            </form>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Cheating  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Cheating">
                            </form>
                        
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Counterfeiting  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Counterfeiting">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Arson 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Arson">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Hurt  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Hurt">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Dowry Deaths  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Dowry_Deaths">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Molestation  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Molestation">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Sexual Harassment  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Sexual_Harassment">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Cruelty by Husband and Relatives
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Cruelty_by_Husband">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Importation of Girls  
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Importation of Girls">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Causing Death by Negligence 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Causing_Death_by_Negligence">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Other IPC Crimes   
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Other_IPC_Crimes">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Total Cognizable Crimes Under IPC 
                            </h3>
                            <p><form action="crimewise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="crime" name="crime" value="Total_Crimes">
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>





        <div class="heading2">
            <h1>
                CITY WISE ANALYSIS
            </h1>
        </div>    
        
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Ahmedabad
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Ahmedabad">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Allahabad
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Allahabad">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Amritsar
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Amritsar">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Asansol
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Asansol">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Agra
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Agra">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Bengaluru
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Bengaluru">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Bhopal
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Bhopal">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Chennai
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Chennai">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Coimbatore
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Coimbatore">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Delhi 
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Delhi">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Dhanbad
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Dhanbad">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Faridabad
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Faridabad">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Hyderabad
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Hyderabad">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Indore
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Indore">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Jabalpur
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Jabalpur">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Jaipur
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Jaipur">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Jamshedpur
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Jamshedpur">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Kanpur
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Kanpur">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Kochi
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Kochi">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Kolkata
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Kolkata">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Lucknow
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Lucknow">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Ludhiana
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Ludhiana">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Madurai
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Madurai">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Meerut
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Meerut">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Mumbai
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Mumbai">
                            </form>
                        
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Nagpur
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Nagpur">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Nasik
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Nasik">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Patna
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Patna">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Pune
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Pune">
                            </form>
                    
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Rajkot
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Rajkot">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Surat
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Surat">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Vadodara
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Vadodara">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            
        <div class="container">
            <div class="row card-section">
                <div class="col col-lg-3">
                    <div class="card card-contents animate aos-animate aos-init icon-box">
                       
                        <div class="card-body">
                            <h3>
                                Varanasi
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Varanasi">
                            </form>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                       
                        <div class="card-body">
                            <h3>
                                Vijayawada
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Vijayawada">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-3">
                    <div class="card card-contents">
                        
                        <div class="card-body">
                            <h3>
                                Vishakhapatnam
                            </h3>
                            <p><form action="citywise.jsp">
                                <select name="year" id="year" onchange="this.form.submit()"><option value="">Select Year</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                  </select>
                                  <input type="hidden" id="city" name="city" value="Vishakhapatnam">
                            </form>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>


        <footer>
            <div id="bottom-footer">
                <div class="container">
                    <div class="row ">
                        <div class="col col-lg-6">
                            <div class="footer-content">
                               
                            </div>
                        </div>
                        <div class="col footer-content-col col-lg-6">
                            <div class="footer-content">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

      

            
            

</body>

</html>