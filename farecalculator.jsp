
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.*" language="java" %> 

<!DOCTYPE html> 

<head>
    <meta charset="UTF-8">
    <title>Fare Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/farecalculator.css">
    <link rel="stylesheet" href="CSS/heading.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="images/jpg" href="images/thead.png">

    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
</head>

<body class="ubuntu-medium">
    <%@ include file="header.jsp" %>
    <%@ include file="SocialMedia.jsp" %>

    <div id="heading">
        <i><h2 class="line">Fare Calculator</h2></i>
    </div>
    <div class="fare-calculator-box">
        <div class="fare-calculator-box1">
            
            <div class="fare-calculator-box-selection">
                <label for="" class="plan-your-jrny-box-label" id="fromlabelque">From</label>
                <select name="" id="source">
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
                </select>
                <label for="" class="plan-your-jrny-box-label" id="tolabelque">To</label>
                <select name="" id="destination">
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
                </select>
                <input type="submit" value="Know Your Fare" onclick="calculateFare()" id="submitbutton">
                
            </div>
            <div class="source-destination">
                <div style="width: 600px;">
                    <label for="" class="s-d" id="fromlabelres">From :</label> <span id="selectedSource" class="s-d"></span>
                    <label for="" class="s-d" id="tolabelres">To :</label> <span id="selectedDestination" class="s-d"></span>
                
                </div>
                <div class="totalfare">
                    <img src="https://www.punemetrorail.org/assets/images/ticket_fare.svg" class="fareimg">
                    <label for="" id="fare">Total fare:</label>
                    <i class="fa-solid fa-indian-rupee-sign" style="color: #059DB2; margin-top: 24px; size: 20px;">
                    </i> <span id="fareResult"></span><span id="rs" style="margin-left: 5px;"></span>

                </div>
            </div>
            
        </div>
    </div>
    <div class="timetableimg">
        <button onclick="englishbutton()" id="englishbutton">English</button>
        <button onclick="marathibutton()" id="marathibutton">&#2350;&#2352;&#2366;&#2336;&#2368; </button>
    </div>
    <div>
        <hr id="hrline">
        <img src="images/fareimg.jpg" alt="" id="fareimg">
    </div>
    <script src="JS/farecalculator.js"></script>
    
</body>

<%@ include file="footer.jsp" %>

</html>
