<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="CSS/heading.css">
    <title>Complaints</title>
    <link rel="icon" type="images/jpg" href="images/thead.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    
</head>
<body>
    <%@ include file="header.jsp" %>
    <%@ include file="SocialMedia.jsp" %>
        <div id="heading">
        <i><h2 class="line">Complaints</h2></i>
        </div>
        <main>   
            <div class="box">
                <div class="box2">
                    <form action="submitComplaint.jsp" method="post">
                            <h5>Register Your Complaints here</h5>
                            <label for="item">Name  :</label>
                            <input type="text" id="namee" name="name" required oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Name is required!')"><br>
                            <label for="item">Contact Number :</label>
                            <input type="text" id="mobile" name="mobile" required><br>
                            <label for="item">Email Id :</label>
                            <input type="text" id="email" name="email" required><br>
                            <label for="item">Station Name :</label>
                            <div class="plan-your-jrny-box-selection">
                            <select name="S_name" id="S_name">
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
                            <label for="description">Complaint in Brief:</label>
                            <textarea id="complaint" name="complaint" rows="4" required></textarea><br>
                            </div>
                            <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
    </main><br>
    <script src="JS/index.js"></script>
    <script src="header.jsp"></script>
    
</body>
<%@ include file="footer.jsp" %>
</html>