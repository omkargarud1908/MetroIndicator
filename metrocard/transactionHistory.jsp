<%@ page import ="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Metro Card</title>
    <link rel="stylesheet" href="CSS/headerfooter.css">
    <link rel="stylesheet" href="CSS/metrocard_loginstyles.css">
    <link rel="stylesheet" href="CSS/heading.css">
    <link rel="stylesheet" href="CSS/DarkLightMode.css">
    
    
</head>

<body>
    <%@ include file="header.jsp" %>   
    
    <div id="heading">
        <i><h2 class="line">Transactin History</h2></i>
        </div>
    
    <div class="box">
    <div class="transaction-history">
        <% 
            if (session != null) {
                // Retrieve cardNumber and name attributes from session
                int cardNumber = (int) session.getAttribute("cardNumber");
                String name = (String) session.getAttribute("name");
    
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MetroIndicator", "root", "");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM transaction WHERE cardno = ?");
                    ps.setInt(1, cardNumber);
    
                    ResultSet rs = ps.executeQuery();
    
                    // Display transaction details in tabular format

                    
        %>
        <p>Hello, <%= name %>! Here are the transaction details for your card number <%= cardNumber %></p><br>

                    <style>
                        .transaction-table {
                            border-collapse: collapse;
                            width: 100%;
                        }
    
                        .transaction-table th, .transaction-table td {
                            border: 1px solid #dddddd;
                            padding: 8px;
                            text-align: left;
                        }
    
                    </style>
    
                    <table class="transaction-table">
                        <thead>
                            <tr>
                                <th>Transaction ID</th>
                                <th>Card Number</th>
                                <th>Amount</th>
                                <th>Transaction Mode</th>
                                <th>Transaction Date</th>
                            </tr>
                        </thead>
                        <tbody>
        <%
                        while (rs.next()) {
        %>
                            
                            <tr>
                                <td><%= rs.getInt("t_id") %></td>
                                <td><%= rs.getInt("cardno") %></td>
                                <td><%= rs.getDouble("amount") %></td>
                                <td><%= rs.getString("t_mode") %></td>
                                <td><%= rs.getString("transaction_date") %></td>
                            </tr>
        <%
                        }
        %>
                        </tbody>
                    </table>
        <%
                    con.close();
                } catch (Exception e) {
                    // Show a user-friendly error message
                    out.println("An error occurred while processing your request. Please try again later.");
                    // Log the detailed error for debugging
                    e.printStackTrace(); // This will print the error stack trace to the server logs
                }
            } else {
                out.println("Session expired or not available. Please login again.");
            }
        %>
    </div>
    </div>
    
    
</div> 
</div>
</body>
<script src="index.js"></script>    



</html>

   
    
