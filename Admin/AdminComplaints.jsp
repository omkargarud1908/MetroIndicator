<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" href="heading.css">
    <title>Admin Complaints</title>
    <link rel="icon" type="images/jpg" href="https://www.punemetrorail.org/assets/images/logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
   
   
</head>
<body class="ubuntu-medium">
    <%@ include file="AdminHeader.jsp" %>

  <div class="social_media_group box_shadow">

    <ul>
      <li>
        <a href="https://www.facebook.com" target="_blank">
          <img src="https://www.punemetrorail.org/assets/images/facebook_174848.png">
        </a>
      </li>
      <li>
        <a href="https://www.youtube.com" target="_blank">
          <img src="https://www.punemetrorail.org/assets/images/youtube_3938026.png">
        </a>
      </li>
      <li>
        <a href="https://www.thread.com" target="_blank">
          <img src="https://www.punemetrorail.org/assets/images/threads.png">
        </a>
      </li>
      <li>
        <a href="https://www.instagram.com" target="_blank">
          <img src="https://www.punemetrorail.org/assets/images/instagram_2111463.png">
        </a>
      </li>
      <li>
        <a href="https://www.twitter.com" target="_blank">
          <img src="https://www.punemetrorail.org/assets/images/x_logo%202.png">
        </a>
      </li>

    </ul>
  </div>
    <div id="heading">
        <i><h2 class="line">Complaints</h2></i>
    </div>
    <main>
        <div class="box">
                <h6>Complaints by the users</h6>
                    <table border="2">
                                <thead>
                                    <tr>
                                        <th>C_ID</th>
                                        <th>Name</th>
                                        <th>Mobile No.</th>
                                        <th>Email</th>
                                        <th>Station Name</th>
                                        <th>Complaint</th>
                                        <th>Date and Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    String url = "jdbc:mysql://localhost:3306/MetroIndicator";
                                    String user = "root";
                                    String pass = "";
                        
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection(url, user, pass);
                                        Statement stmt = con.createStatement();
                                        String query = "SELECT * FROM complaints";
                                        ResultSet rs = stmt.executeQuery(query);
                                        
                                        while(rs.next()) {
                                            out.println("<tr><td>" + rs.getString("id")+ "</td><td>" + rs.getString("name")+ "</td><td>" + rs.getString("mobile") + "</td><td>" + rs.getString("email") + "</td><td>" + rs.getString("stationName") + "</td><td>" + rs.getString("complaint") + "</td><td>" + rs.getString("created_at") + "</td></tr>");
                                        }
                                    } catch(Exception e) {
                                        out.println("Error: " + e.getMessage());
                                    }
                                    %>
                                </tbody>
                            </table>
            </div>              
        </div> 
    </main><br>
    <script src="index.js"></script> 
    <%@ include file="AdminFooter.jsp" %>
    
</body>
</html>

<%
    } else {
        // If user is not logged in, redirect to login page
        response.sendRedirect("Login.jsp");
    }
%>
