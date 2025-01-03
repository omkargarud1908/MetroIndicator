<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.*" language="java" %> 
<%@ page import="javax.servlet.http.HttpSession"%> 

<!DOCTYPE html> 

<html> 
<head> 
    <title>Pune Metro-Projects</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=us-ascii" /> 
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    
    <link rel="icon" type="images/jpg" href="images/mumbaimetrologo.jpg">
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

        #heading{
            font-size: 30px;
            margin-left: 100px;
            
        }
        #heading h2{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color: rgb(17, 130, 153);
        }
        .line {
        position: relative;
        }

        .line::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 7%; /* Adjust the width as needed */
            height: 5px; /* Adjust the thickness of the underline */
            background-color:rgb(17, 130, 153);
        }
    </style>
    
    
    
</head> 
<body class="ubuntu-medium" id="sizecontainer"> 

 <%@ include file="header.jsp" %>
 <div class="social_media_group box_shadow">

  <ul>
    <li>
      <a href="https://www.facebook.com" target="_blank">
        <img src="images/FacebookLogo.png">
      </a>
    </li>
    <li>
      <a href="https://www.youtube.com" target="_blank">
        <img src="images/YouTubeLogo.png">
      </a>
    </li>
    <li>
      <a href="https://www.thread.com" target="_blank">
        <img src="images/ThreadsLogo.png">
      </a>
    </li>
    <li>
      <a href="https://www.instagram.com" target="_blank">
        <img src="images/InstagramLogo.webp">
      </a>
    </li>
    <li>
      <a href="https://www.twitter.com" target="_blank">
        <img src="images/TwitterLogo.webp">
      </a>
    </li>

  </ul>
</div>

 <div id="heading">
    <i><h2 class="line">Project</h2></i>
    </div>

     <div id="mahametro">
        <p>
           
           
        </p>
     </div>
</body>
<%@ include file="footer.jsp" %>

</html>
