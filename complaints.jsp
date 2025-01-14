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
                            <input type="text" id="name" name="name" required><br>
                            <label for="item">Contact Number :</label>
                            <input type="text" id="mobile" name="mobile" required><br>
                            <label for="item">Email Id :</label>
                            <input type="text" id="email" name="email" required><br>
                            <label for="item">Station Name :</label>
                            <div class="plan-your-jrny-box-selection">
                            <select name="S_name" id="S_name">
                                <option value="0">-- Select Station --</option>
                                <option value="PCMC">PCMC</option>
                                <option value="Sant Tukaram Nagar">Sant Tukaram Nagar</option>
                                <option value="Bhosari">Bhosari</option>
                                <option value="Kasarwadi">Kasarwadi</option>
                                <option value="Phugewadi">Phugewadi</option>
                                <option value="Dapodi">Dapodi</option>
                                <option value="Bopodi">Bopodi</option>
                                <option value="Shivaji Nagar">Shivaji Nagar</option>
                                <option value="Civil Court">Civil Court</option>
                                <option value="Vanaz">Vanaz</option>
                                <option value="Anand Nagar">Anand Nagar</option>
                                <option value="Ideal Colony">Ideal Colony</option>
                                <option value="Nal Stop">Nal Stop</option>
                                <option value="Garware College">Garware College</option>
                                <option value="Deccan Gymkhana">Deccan Gymkhana</option>
                                <option value="Chhatrapati Sambhaji Udyan">Chhatrapati Sambhaji Udyan</option>
                                <option value="PMC">PMC</option>
                                <option value="Mangalwar Peth">MangalwarPeth</option>
                                <option value="Pune Railway Station">PuneRailwayStation</option>
                                <option value="Ruby Hall Clinic">RubyHallClinic</option>
                            </select><br>
                            <label for="description">Complaint in Brief:</label>
                            <textarea id="complaint" name="complaint" rows="4" required></textarea><br>
                            </div>
                            <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
    </main><br>
      
    <script src="index.js"></script>  
</body>
<%@ include file="footer.jsp" %>
</html>