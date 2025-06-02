<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.*" language="java" %> 
<%@ page import="javax.servlet.http.HttpSession"%> 

<!DOCTYPE html> 
<html> 
<head> 
    <title>Mumbai Metro-About</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=us-ascii" /> 
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="CSS/heading.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    
    <link rel="icon" type="images/jpg" href="images/thead.png">
    <style>
      #mahametro
        {
            width: 1200px;
            height: auto;
            margin-left: 100px;
            margin-bottom: 150px;
        }
        #mahametro p
        {
            font-size: 17px;
            margin-top: 40px;
        }
    </style>
</head> 
<body class="ubuntu-medium" id="sizecontainer"> 

 <%@ include file="header.jsp" %>
 <%@ include file="SocialMedia.jsp" %>
 
 <div id="heading">
    <i><h2 class="line">About Maha Metro</h2></i>
    </div>
     <div id="mahametro">
       <p>The Mumbai Metro is a rapid transit system serving the city of Mumbai and the wider Mumbai Metropolitan Region in Maharashtra, India.

        <br><br>While the Maharashtra Metro Rail Corporation Limited is responsible for all metro rail projects being developed in Maharashtra, except for those in the Mumbai Metropolitan Area, the Mumbai Metropolitan Region Development Authority is the authority responsible for maintaining the metro system in the Greater Mumbai area.
        
        <br><br>The rapid transit metro system is designed to reduce traffic congestion in the city and supplement the overcrowded Mumbai Suburban Railway network. It is being built in three phases, over 15 years, with overall completion expected in October 2026. The Mumbai Metro is the fourth longest operational metro network in India with an operational length of 59.5 km (37.0 mi) as of January 2023. When completed, the core system will comprise sixteen high-capacity metro railway lines, spanning a total of more than 523 kilometres (325 mi) (25% underground, the rest elevated, with a minuscule portion built at-grade) and serviced by 350 stations.[3]
        
        <br><br>Line 1 of the Mumbai Metro is operated by Mumbai Metro One Private Limited (MMOPL), a joint venture between Reliance Infrastructure (50%), Mumbai Metropolitan Region Development Authority, (50%) and formerly by RATP Dev Transdev Asia (5%) and Hong Kong MTR.[4] While lines 2, 4, 5, 6, 7 and their extensions will be built and operated by the Mumbai Metropolitan Region Development Authority (MMRDA), the completely underground Line 3 and Line 11 will be built by Mumbai Metro Railway Corporation Limited (MMRCL).
        
        <br><br>In June 2006, Prime Minister Manmohan Singh laid the foundation stone for the first phase of the Mumbai Metro project, although construction work began in February 2008.[5][6][7] A successful trial run was conducted in May 2013,[8][9][10] and the system's first line commenced operations on 8 June 2014. Many metro projects were delayed because of late environmental clearances, land acquisition troubles and protests.
        
        <br><br>After nearly eight years, two new metro corridors, 2A and 7, were inaugurated on 2 April 2022, and are now operational. On 5 October 2024, the 12 km underground BKC to Aarey Jogeshwari-Vikhroli Link Road section of Aqua Line was inaugurated. Additionally, there are 8 other metro lines currently under construction in the city.</p>   
           
    
     </div>

</body>
<script src="JS/index.js"></script> 
<script src="JS/header.js"></script>

<%@ include file="footer.jsp" %>

</html>
