<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link id="cssLink" rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="CSS/DarkLightMode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
                            <img src="images/MMRCLogo.png" id="punemetrologo">

                        </a>
                    </span>
                </div>
                <div >
                    <div class="mumbaiheading">M(etro)-Indicator</div>
                </div>
                <div class="right">
                    <ul>
                        
                    </ul> 
                    <div class="toggle-container" id="themeToggle">
                        <span class="material-icons" id="themeIcon">light_mode</span>
                    </div> 
                </div>
            </nav>
            <nav class="nav2">
                <div class="left">
                    <span class ="red"></span>
                </div>
                <div class="ullist" style="color: black;">
                    <ul>
                        <li class="hidecontent"><a href="AdminHome.jsp">Home</a></li>
                        <li class="hidecontent"><a href="AdminTicket.jsp">Ticket</a></li>
                        <li class="hidecontent"><a href="AdminLostFound.jsp">Lost & Found</a></li>
                        <li class="hidecontent"><a href="AdminMetrocard.jsp">Metrocard</a></li>
                        <li class="hidecontent"><a href="AdminReports.jsp">Reports</a></li>
                        <li class="hidecontent"><a href="AdminComplaints.jsp">Complaints</a></li>
                        <li class="hidecontent"><a href="#"><%= username %>!</a></li>
                        <li class="hidecontent"><a href="AdminLogout.jsp">logout</a></li>
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
                    <li class="hidecontent"><a href="AdminHome.jsp">Home</a></li>
                        <li class="hidecontent"><a href="AdminTicket.jsp">Ticket</a></li>
                        <li class="hidecontent"><a href="AdminLostFound.jsp">Lost & Found</a></li>
                        <li class="hidecontent"><a href="AdminMetrocard.jsp">Metrocard</a></li>
                        <li class="hidecontent"><a href="AdminComplaints.jsp">Complaints</a></li>
                        <li class="hidecontent"><a href="#"><%= username %>!</a></li>
                        <li class="hidecontent"><a href="AdminLogout.jsp">logout</a></li>
                </ul>
            </div>
            
        </div>
    </header>

    
</body>
<script src="header.js"></script>
<script src="DarkLightMode.js"></script>
</html>