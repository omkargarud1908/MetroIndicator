<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.*" language="java" %> 
<%@ page import="javax.servlet.http.HttpSession"%> 

<!DOCTYPE html> 
<html> 
<head> 
    <title>Welcome to Mumbai Metro</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=us-ascii" /> 
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"async defer></script>

    <link rel="icon" type="images/jpg" href="images/mumbaimetrologo.jpg">
    
</head> 
<body class="ubuntu-medium" id="sizecontainer"> 

  <div id="loading-screen">
    <img src="images/loadingimg.gif" alt="" id="loadingimg">
    <br>
    <p>Just a second...</p>
  </div>

  
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

  <div>
  
  <div class="plan-your-jrny-box">
    <div class="plan-your-jrny-box1">
        <div class="plan-your-jrny-box-heading">
            <h2>PLAN YOUR JOURNEY</h2>        
        </div>
        <div class="plan-your-jrny-box-selection">
            <label for="" class="plan-your-jrny-box-label">From</label><br>
            <select name="source" id="source">
                <option value="0">-- Select Station --</option>
                <option value="1">Demo</option>
                <option value="2">Demo</option>
                <option value="3">Demo</option>
                <option value="4">Demo</option>
                
            </select><br>
            <label for="" class="plan-your-jrny-box-label">To</label><br>
            <select name="destination" id="destination">
                <option value="0">-- Select Station --</option>
                <option value="1">Demo</option>
                <option value="2">Demo</option>
                <option value="3">Demo</option>
                <option value="4">Demo</option>
                
            </select><br>
            <input type="submit" value="Show Route & Fare" id="calculateFareButton" onclick="redirectToFareCalculatorPage()">
            <i class="fa-solid fa-repeat plan-your-jrny-box-reset" style="margin-left: 42px;"></i>
            <a href="index.jsp" class="plan-your-jrny-box-reset">Reset</a>
        </div>
    </div>
</div>

<div class="quote">
    <div class="quote1">
        Fast and Secure:
        <br>
        <span class="quote2" >
            Mumbai Metro, Your 
            <br>
            Commute Companion
        </span>
    </div>
</div>
</div>


<section>
    <div class="slider">
        <div class="slide" style="background-image: url('images/metroimg5.jpg')"></div>
        <div class="slide" style="background-image: url('images/metroimg2.jpg')"></div>
        <div class="slide" style="background-image: url('images/metroimg3.avif')"></div>
        <div class="slide" style="background-image: url('images/metroimg4.jpeg')"></div>
        <div class="slide" style="background-image: url('images/metroimg2.jpg')"></div> 
    </div>
</section>


<div id="notification">
  <marquee direction="left" behavior="scroll" scrollamount="3">
   *For job inqury click here
</marquee>
</div>
    
    <div id="serviceandnews">

      <div class="container" id="newdcontainer">
        <div id="map"></div>
            <br>
        <button onclick="findNearestStation()" id="findNearestStationBtn">Find Nearest Station</button>

      </div>
       

      <div id="servicetabs">
        <div class="time-table">
          <a href="timetable.jsp">
            <div class="time-table1">
              <img src="https://www.punemetrorail.org/assets/images/time_table.svg" alt="">
              Train Time Table 
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        
        <div class="metro-card">
          <a href="metrocard/metrocard_login.jsp">
            <div class="metro-card1">
              <img src="https://www.punemetrorail.org/assets/images/card.svg" alt="">
              Metro Card
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="fare-chart">
          <a href="farecalculator.jsp">
            <div class="fare-chart1">
              <img src="https://www.punemetrorail.org/assets/images/fare.svg" alt="">
              Fare Chart
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="lostandfound">
          <a href="LostFound.jsp">
            <div class="lostandfound1">
              <img src="images/bag-cross-svgrepo-com.svg" alt="">
              Lost & Found
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="Ticket">
          <a href="News.jsp">
            <div class="Ticket1">
              <img src="./images/train.svg"alt="">
              News
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        
        <div class="Complaint">
          <a href="complaints.jsp">
            <div class="Complaint1">
              <img src="images/complain.svg" alt="">
              Complaint
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
      </div>
  </div> 
  <script src="JS/index.js"></script>    
</body>
<%@ include file="footer.jsp" %>
</html>
