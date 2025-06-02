<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.*" language="java" %> 
<%@ page import="javax.servlet.http.HttpSession"%> 
<%@ page import="javax.servlet.http.*" %>
<%
    // Retrieve username from session
    HttpSession userSession = request.getSession(false); // Don't create a new session if it doesn't exist
    String username = null;
    if (userSession != null) {
        username = (String) userSession.getAttribute("username");
    }

    // Check if the user is logged in
    if (username != null) {
    %>


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
    
    <link rel="icon" type="images/jpg" href="images/thead.png">    
</head> 
<body class="ubuntu-medium"> 
 
  <%@ include file="AdminHeader.jsp" %>
  <%@ include file="SocialMedia.jsp" %>
 

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
              <option value="Aarey JVLR">Aarey JVLR</option>
              <option value="SEEPZ">SEEPZ</option>
              <option value="MIDC-Andheri">MIDC-Andheri</option>
              <option value="Marol Naka">Marol Naka</option>
              <option value="CSMI-Airport-T2">CSMI-Airport-T2</option>
              <option value="Sahar Road">Sahar Road</option>
              <option value="CSMI-Airport-T1">CSMI-Airport-T1</option>
              <option value="Santacruz">Santacruz</option>
              <option value="Bandra Colony">Bandra Colony</option>
              <option value="Bandra-Kurla Complex">Bandra-Kurla Complex</option>

            </select><br>
            <label for="" class="plan-your-jrny-box-label">To</label><br>
            <select name="destination" id="destination">
              <option value="0">-- Select Station --</option>
              <option value="Aarey JVLR">Aarey JVLR</option>
              <option value="SEEPZ">SEEPZ</option>
              <option value="MIDC-Andheri">MIDC-Andheri</option>
              <option value="Marol Naka">Marol Naka</option>
              <option value="CSMI-Airport-T2">CSMI-Airport-T2</option>
              <option value="Sahar Road">Sahar Road</option>
              <option value="CSMI-Airport-T1">CSMI-Airport-T1</option>
              <option value="Santacruz">Santacruz</option>
              <option value="Bandra Colony">Bandra Colony</option>
              <option value="Bandra-Kurla Complex">Bandra-Kurla Complex</option>
            </select><br>
            <input type="submit" value="Show Route & Fare" id="calculateFareButton" onclick="redirectToFareCalculatorPage()">
            <i class="fa-solid fa-repeat plan-your-jrny-box-reset" style="margin-left: 42px;"></i>
            <a href="AdminHome.jsp" class="plan-your-jrny-box-reset">Reset</a>
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


    
    <div>
        <div class="time-table">
          <a href="AdminTimeTable.jsp">
            <div class="time-table1">
              <img src="https://www.punemetrorail.org/assets/images/time_table.svg" alt="">
              Train Time Table 
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>

        <div class="Complaint">
          <a href="AdminComplaints.jsp">
            <div class="Complaint1">
              <img src="images/complaint.svg" alt="">
              Complaint
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>

        <div class="metro-card">
          <a href="AdminMetrocard.jsp">
            <div class="metro-card1">
              <img src="https://www.punemetrorail.org/assets/images/card.svg" alt="">
              Metro Card
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="fare-chart">
          <a href="Adminfarecalculator.jsp">
            <div class="fare-chart1">
              <img src="https://www.punemetrorail.org/assets/images/fare.svg" alt="">
              Fare Chart
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="Ticket">
          <a href="AdminTicket.jsp">
            <div class="Ticket1">
              <img src="./images/train.svg"alt="">
              Ticket
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
        <div class="lostandfound">
            <a href="AdminLostFound.jsp">
            <div class="lostandfound1">
              <img src="images/bag-cross-svgrepo-com.svg" alt="">
              Lost & Found
              <i class="fa-solid fa-angle-right"></i>
            </div>
          </a>
        </div>
      </div>
      
      <script>
         function redirectToFareCalculatorPage() {
        var sourceElement = document.getElementById('source');
        var destinationElement = document.getElementById('destination');
    
        var sourceIndex = sourceElement.selectedIndex;
        var destinationIndex = destinationElement.selectedIndex;
    
        var sourceValue = sourceElement.value;
        var destinationValue = destinationElement.value;

        var sourceValue1 = sourceElement.options[sourceElement.selectedIndex];
        var sourceValue = sourceValue1.textContent;

        var destinationValue1 = destinationElement.options[destinationElement.selectedIndex];
        var destinationValue = destinationValue1.textContent;
        


        localStorage.setItem('sourceValue',sourceValue);
        localStorage.setItem('destinationValue',destinationValue);
        localStorage.setItem('srcindex',sourceIndex);
        localStorage.setItem('destindex',destinationIndex);
        if(sourceIndex!=0&&destinationIndex!=0)
        {

            window.location.href = 'AdminTicket.jsp';
        }
        else
        {
            alert('please select source and destination');
        }
    }
      </script>
      <script src="index.js"></script> 
     

</body>

<%@ include file="AdminFooter.jsp" %>
</html>
<%
    } else {
        // If user is not logged in, redirect to login page
        response.sendRedirect("AdminLogin.jsp");
    }
%>



