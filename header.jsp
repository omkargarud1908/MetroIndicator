<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link id="cssLink" rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    
    <title>Document</title>
</head>
<body class="ubuntu-medium" id="sizecontainer"> 
    <header>
        <div>
            <nav class="nav1">
                <div class="left">
                    <span class ="red">
                        <a href="index.jsp">
                            <img src="images/mumbaimetrologo.png" id="punemetrologo">

                        </a>
                    </span>
                </div>
                <div >
                    <div class="puneheading">M(etro) Indicator</div>
                </div>
                <div class="right">
                    <ul>
                        <li style="margin-left: 0%;" class="complainticon"><a href="tel:18002705501"><img src="https://punemetrorail.org/assets/images/helpline%201.svg"></a></li>
                        <li style="font-size: 25px;" class="complainticon">|</li>  
                        <li id="whatsAppicon">
                            <a href="#" >
                                <img src="https://www.punemetrorail.org/assets/images/whatsApp.svg" style="height: 35px; width: 140px; ">
                            </a>
                        </li>
                        
                        <li style="font-size: 25px;" class="complainticon">|</li>
                        <li><a href="https://www.punemetrorail.org/screen-reader" class="hidecontent">SCREEN READER</a></li>
                         <li>|</li>
                        <li ><a href="" id="languagebtn">Language </a>
                             
                            <div id="language">
                                <ul id="languagecontainer">
                                    <li><a href="#">English</a></li>
                                    <li><a href="">&#2350;&#2352;&#2366;&#2336;&#2368;</a></li>
                                </ul> 
                            </div>
                         
                        </li>
                        <li class="sizeicon">|</li>
                        <li style="margin-right: 10px;" class="sizeicon">
                            <a href="#" class="sizebuttons"  id="increaseCssBtn">A+</a>
                            <a href="#" class="sizebuttons"  id="defaultCssBtn" >A</a>
                            <a href="#" class="sizebuttons"  id="decreaseCssBtn">A-</a>
                        </li> 
                    </ul>  
                </div>
            </nav>
            <nav class="nav2">
                <div class="left">
                    <span class ="red"></span>
                </div>
                <div class="ullist" style="color: black;">
                    <ul>
                        <li class="hidecontent"><a href="index.jsp">Home</a></li>
                        <li class="hidecontent"><a href="About.jsp">About</a></li>
                        <li class="hidecontent"><a href="News.jsp">News</a></li>
                        <li class="hidecontent"><a href="#" onclick="servicesbox()" id="servicesid">Services <i class="fa-solid fa-angle-down"id="arowdown" style="color: #ffffff; margin-left: 5px;"></i><i class="fa-solid fa-angle-up" id="arowup" style="margin-left: 5px; "></i></a></li>
                        <li class="hidecontent"><a href="upcomingprojects.jsp">Projects</a></li>
                        <li class="hidecontent"><a href="contactus.jsp">Contact me</a></li>
                    </ul> 
                         
                    
                </div>
                
                <li onClick="showSidebar()" class="icon">
                    <a id="showicon">
                        <i class="fa-solid fa-bars" style="color: white;" id="bar" ></i>
                    </a>
                </li>

            </nav>
            <div >
                <ul class="sidebar">
                    <li onclick="hideSidebar()"><i class="fa-solid fa-xmark"></i></li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="About.jsp">About</a></li>
                    <li><a href="#" id="servicesidebar">Services  <i class="fa-solid fa-angle-down"id="arowdownsidebar" style="color: black; margin-left: 5px;"></i><i class="fa-solid fa-angle-up" id="arowupsidebar" style="margin-left: 5px; "></i></a></li>
                    <div id="serviceslist">
                        <ul>
                            <li><a href="complaints.jsp">Complaint</a></li>
                            <li><a href="LostFound.jsp">Lost & Found</a></li>
                            <li><a href="farecalculator.jsp">Fare Calculator</a></li>
                            <li><a href="metrocard/metrocard_login.jsp">Metro Card</a></li>
                            
                            <li><a href="#">Time Table</a></li>
                        </ul>
                    </div>
                    <li><a href="upcomingprojects.jsp">Projects</a></li>
                    <li><a href="contactus.jsp">Contact me</a></li>
                </ul>
            </div>
            
        </div>
    </header>

    <div class="services">
        <ul id="serviceul">
        <li><a href="complaints.jsp">Complaint</a></li>
        <li><a href="LostFound.jsp">Lost & Found</a></li>
        <li><a href="farecalculator.jsp">Fare Calculator</a></li>
        <li><a href="metrocard/metrocard_login.jsp">Metro card</a></li>
        
        <li><a href="timetable.jsp">Time Table</a></li>
        </ul>
    </div>
</body>
<script src="JS/header.js"></script>
</html>