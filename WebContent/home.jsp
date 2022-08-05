<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="row image-section">
        <div class="background-img header-set">
            <h1>Welcome to <a href="#">Crinalytics</a></h1>
            <h2> Crinalytics is a community alert system designed to gather crime information and alert others.</h2>
            <button class="btn btn-primary btn-lg "> Get started</button>
            <button class="btn btn-lg"><i class="fa fa-play-circle-o"></i>Watch video</button>
        </div>
    </div>
    </div>

    <section id="about" class="bg-color">
        <div class="container">
            <div class="row ">
                <div class="about-section">
                    <h4>ABOUT</h4>
                    <h2>Find Out More <a href="#"> About Us</a></h2>
                    <h3><strong>WHAT IS CRINALYTICS?</strong></h3>
                    <p>Crinalytics is a community alert system designed to gather crime information and alert others.
                    </p>
                </div>
            </div>
           
            <div class="row">
                <div class="about-section-2">
                    <p class="section-content">
                        Crime has always been a major issue in India and according to recent Global Peace Index India
                        ranks
                        139 out of 163
                        countries. Our problem statement is that we want to create a system that will do analysis on
                        Criminal data available on CCTNS. CCTNS which stands from Crime and Criminal Traking Network and
                        System is a Government website
                        that comes under NCRB(National Crime Records Bureau). It has Criminal data of various states and
                        Cities of India for various crimes. Crynalytics will get data from this database and will
                        perform
                        analysis
                        which can be further used to identify patterns,hotspots and trends in Crimes all over India.

                    </p>
                </div>

            </div>

        </div>
        </div>
    </section>
    <div class="row">
        <div class="col col-lg-6 block1">
            <div class="spotlight-card1">
                <h2 class="section-title ">How it Works</h2>
                <ul class="workicon">
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-5x"></i></a>
                    </li>
                </ul>
              

                <span class="text-block">The system does analysis on Criminal data available on CCTNS. CCTNS which stands from Crime and Criminal Traking Network and
                    System is a Government website that comes under NCRB. It has Criminal data of various states and
                    Cities of India for various crimes. Crynalytics will get data from this database and will perform analysis
                    which can be further used to identify patterns,hotspots and trends in Crimes all over India.</span>
                <span class="text-block">We also analyze crime trends in your neighborhood and allow you to search for
                    crime near any address.</span>
            </div>
        </div>
        <div class="col col-lg-6 block2">
            <div class="spotlight-card">
                <h2 class="section-title">Why Trust Crinalytics?</h2>
                <ul class="workicon2">
                    <li>
                        <a href="#"><i class="fa fa-shield fa-5x"></i></a>
                    </li>
                </ul>

                <span class="text-block">Crinalytics is 100% independent.</span>
                <span class="text-block">With free access to basic crime alerts we hope to encourage public trust,
                    increase police transparency, and promote public safety. There is data of various crimes reported by people which can help other people to have a broad view of the common crimes that are taking place in their city.</span>
            </div>

        </div>

    </div>
   

    
                           
</body>

</html>











    
    
                           
