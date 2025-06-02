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
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="CSS/heading.css">
    <title>Admin Reports</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="images/jpg" href="images/thead.png">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
   
</head>
<body class="ubuntu-medium">
    <%@ include file="AdminHeader.jsp" %>
    <%@ include file="SocialMedia.jsp" %>
  
     <div id="heading">
    <i><h2 class="line">Reports</h2></i>
    </div> 
    <main>
        <div class="tab-titles">
            <button class="tab-links active-link active-button" onclick="openTab(this,'Ritem')">Tickets</button>
            <button class="tab-links" onclick="openTab(this,'LItems')">Station To Station</button>
            <button class="tab-links" onclick="openTab(this,'FItems')">Station Reports</button>
            <button class="tab-links" onclick="openTab(this,'Retditems')">Revenew</button>
        </div>
        <hr>
        <div class="tab-contents" id="LItems">
            <div class="box">
                <h6>Station to tation Reports</h6>
                    <form action="AdminReports.jsp" method="post">
                        <label for="statio_from">Station From :</label>
                        <div class="plan-your-jrny-box-selection">
                            <select name="statio_from" id="statio_from">
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
                        </div>
                        <label for="Station_to">Station To :</label>
                        <div class="plan-your-jrny-box-selection">
                            <select name="Station_to" id="Station_to">
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
                        </div>
                        <div class="dateselection">
                            <label for="froms">from :</label>
                            <input type="date" id="from" name="froms" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
                            <label for="to">to :</label>
                            <input type="date" id="to" name="tos" placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" required><br>
                        </div>
                        <input type="submit" value="Generate Report">
                    </form><br>
                    <table border="1">
                        <tbody>
                            <%
                                String url = "jdbc:mysql://localhost:3306/MetroIndicator";
                                String user = "root";
                                String pass = "";
                                Connection con = null;
                                con = DriverManager.getConnection(url, user, pass);
                                

                                String stationFrom = request.getParameter("statio_from"); // Corrected parameter name
                                String stationTo = request.getParameter("Station_to"); // Corrected parameter name
                                String fromDates = request.getParameter("froms"); // Corrected parameter name
                                String toDates = request.getParameter("tos"); // Corrected parameter name
                                
                                try {
                                    // Establish database connection
                                    Class.forName("com.mysql.jdbc.Driver");
                                    
                                   
                                    // Query to get the number of users and total fare generated between given dates
                                    String query = "SELECT COUNT(*) AS num_passengers, SUM(fare) AS total_fare FROM tickets WHERE source_station = ? AND destination_station = ? AND DATE(created_at) BETWEEN ? AND ?";
                                    
                                    // Prepare and execute the SQL statement
                                    PreparedStatement reportPst = con.prepareStatement(query);
                                    reportPst.setString(1, stationFrom);
                                    reportPst.setString(2, stationTo);
                                    reportPst.setString(3, fromDates);
                                    reportPst.setString(4, toDates);
                                    ResultSet reportResult = reportPst.executeQuery();
                                    
                                    // Display the result
                                    if (reportResult.next()) {
                                        int numUsers = reportResult.getInt("num_passengers");
                                        double totalFare = reportResult.getDouble("total_fare");
                                        out.println("Number of Passengers traveled between " + fromDates + " and " + toDates + ": <h1>" + numUsers + "</h1>");
                                        out.println("Total fare generated between " + fromDates + " and " + toDates + ": <h1>" + totalFare + "</h1>");
                                    } else {
                                        out.println("No data available for the selected date range.");
                                    }
                                } catch(Exception e) {
                                    out.println("Error: " + e.getMessage());
                                }
                                    
                            %>

                                                    
                        </tbody>
                    </table>
            </div>
        </div>
    </main>
        <div class="tab-contents" id="Retditems">
            <div class="box">
                <h6>Reports</h6>
                <form action="AdminReports.jsp" method="post">
                    <div class="dateselection">
                    <label for="rev_from">from :</label>
                    <input type="date" id="rev_from" name="rev_from" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
                    <label for="rev_to">to :</label>
                    <input type="date" id="rev_to" name="rev_to" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
                </div>
                    <input type="submit" value="Generate Report">
                </form><br>
                <table border="1">
                    <tbody>
                        <%
                        // Extracting dates from the form
                        String revfromDate = request.getParameter("rev_from");
                        String revtoDate = request.getParameter("rev_to");

                        try {
                            // Establish database connection
                            Class.forName("com.mysql.jdbc.Driver");
                           
                        
                            // Query to get the total fare generated between given dates from both tickets and transactions
                            String reportQuery = "SELECT SUM(fare) AS total_fare FROM (SELECT fare FROM tickets WHERE DATE(created_at) BETWEEN ? AND ? UNION ALL SELECT amount FROM transaction WHERE DATE(transaction_date) BETWEEN ? AND ?) AS combined_fares";
                            
                            // Prepare and execute the SQL statement
                            PreparedStatement reportPst = con.prepareStatement(reportQuery);
                            reportPst.setString(1, revfromDate);
                            reportPst.setString(2, revtoDate);
                            reportPst.setString(3, revfromDate);
                            reportPst.setString(4, revtoDate);
                            ResultSet reportResult = reportPst.executeQuery();
                            
                            // Display the result
                            if (reportResult.next()) {
                                double totalFare = reportResult.getDouble("total_fare");
                                out.println("Total fare generated between " + revfromDate + " and " + revtoDate + ": <h1> " + totalFare + "</h1>");
                            } else {
                                out.println("No data available for the selected date range.");
                            }
                        } catch(Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                        %>
                           
                    </tbody>
                </table>
            </div>
        </div>

        <div class="tab-contents" id="FItems">
            <div class="box"> 
    
                <h6>Station Reports</h6>
                <form action="AdminReports.jsp" method="post">
                    <label for="Station_Report">Station To :</label>
                    <div class="plan-your-jrny-box-selection">
                        <select name="Station_Report" id="Station_Report">
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
                    </div>
                    <div class="dateselection">
                        <label for="s_from">from :</label>
                        <input type="date" id="s_from" name="s_from" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required><br>
                        <label for="s_to">to :</label>
                        <input type="date" id="s_to" name="s_to" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required><br><br>
                    </div>
                    <input type="submit" value="Generate Report">
                </form>
                
                <table border="2">
                   
                    <tbody>

                        <%
                    // Extracting dates from the form
                    String rstation = request.getParameter("Station_Report");
                    String sfromDate = request.getParameter("s_from");
                    String stoDate = request.getParameter("s_to");

                    try {
                        // Establish database connection
                        Class.forName("com.mysql.jdbc.Driver");
                        
                    
                        // Query to get the number of users and total fare generated between given dates and station
                        String reportQuery = "SELECT COUNT(DISTINCT ticket_id) AS num_users, SUM(fare) AS total_fare FROM tickets WHERE DATE(created_at) BETWEEN ? AND ? AND source_station = ?";
                        
                        // Prepare and execute the SQL statement
                        PreparedStatement reportPst = con.prepareStatement(reportQuery);
                        reportPst.setString(1, sfromDate);
                        reportPst.setString(2, stoDate);
                        reportPst.setString(3, rstation);
                        ResultSet reportResult = reportPst.executeQuery();
                        
                        // Display the result
                        if (reportResult.next()) {
                            int numUsers = reportResult.getInt("num_users");
                            double totalFare = reportResult.getDouble("total_fare");
                            out.println("Number of users traveled between " + sfromDate + " and " + stoDate + " from station " + rstation + ": <h1> " + numUsers + "</h1>");
                            out.println("Total fare generated between " + sfromDate + " and " + stoDate + " from station " + rstation + ": <h1> " + totalFare + "</h1>");
                        } else {
                            out.println("No data available for the selected date range and station.");
                        }
                    } catch(Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                    %>

                        
                    </tbody>
                </table>
                
                
            </div>
        </div>
        
        <div class="tab-contents active-tab" id="Ritem">
            <div class="box">
                <h6>Reports</h6>
                    <form action="AdminReports.jsp" method="post">
                        <div class="dateselection">
                        <label for="from">from :</label>
                        <input type="date" id="from" name="from" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
                        <label for="to">to :</label>
                        <input type="date" id="to" name="to" pattern="\d{4}-\d{2}-\d{2}" placeholder="YYYY-MM-DD" required>
                    </div>
                        <input type="submit" value="Generate Report">
                    </form><br>
                    <table border="1">
                        <tbody>
                            <%

                            // Extracting dates from the form
                            String fromDate = request.getParameter("from");
                            String toDate = request.getParameter("to");

                            try {
                                // Establish database connection
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection(url, user, pass);
                               
                            
                                // Query to get the number of users and total fare generated between given dates
                                String reportQuery = "SELECT COUNT(DISTINCT ticket_id) AS num_users, SUM(fare) AS total_fare FROM tickets WHERE DATE(created_at) BETWEEN ? AND ?";
                                
                                // Prepare and execute the SQL statement
                                PreparedStatement reportPst = con.prepareStatement(reportQuery);
                                reportPst.setString(1, fromDate);
                                reportPst.setString(2, toDate);
                                ResultSet reportResult = reportPst.executeQuery();
                            
                                // Display the result
                                if (reportResult.next()) {
                                    int numUsers = reportResult.getInt("num_users");
                                    double totalFare = reportResult.getDouble("total_fare");
                                    out.println("Number of users traveled between " + fromDate + " and " + toDate + ": <h1> " + numUsers + "</h1>");
                                    out.println("Total fare generated between " + fromDate + " and " + toDate + ": <h1> " + totalFare + "</h1>");
                                } else {
                                    out.println("No data available for the selected date range.");
                                }
                            } catch(Exception e) {
                                out.println("Error: " + e.getMessage());
                            } 
                            %>



                                                    
                        </tbody>
                    </table>
            </div>
        </div>
        <script>
            var tabLinks = document.getElementsByClassName('tab-links');
            var tabContents = document.getElementsByClassName('tab-contents');
        
            function openTab(clickedButton, tabName) {
                // Remove 'active-button' class from all buttons
                var buttons = document.querySelectorAll('.tab-links');
                buttons.forEach(function(button) {
                    button.classList.remove('active-button');
                });
                
                // Add 'active-button' class to the clicked button
                clickedButton.classList.add('active-button');
        
                for (var tabLink of tabLinks) {
                    tabLink.classList.remove('active-link');
                }
                for (var tabContent of tabContents) {
                    tabContent.classList.remove('active-tab');
                }
                clickedButton.classList.add('active-link');
                document.getElementById(tabName).classList.add('active-tab');
            }
        </script>
              <script src="index.js"></script> <br>
              <%@ include file="AdminFooter.jsp" %>

</body>
</html>
<%
    } else {
        // If user is not logged in, redirect to login page
        response.sendRedirect("AdminLogin.jsp");
    }
%>