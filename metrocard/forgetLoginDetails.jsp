<%@ page import="java.sql.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="java.io.PrintWriter" %>

<%
    // Retrieve email address from the form
    String email = request.getParameter("email");

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/MetroIndicator";
    String user = "root";
    String pass = "";

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);

        // Query to retrieve login details based on the provided email
        String query = "SELECT username, password FROM registration WHERE email=?";
        pst = con.prepareStatement(query);
        pst.setString(1, email);
        rs = pst.executeQuery();

        if (rs.next()) {
            // If a record is found with the provided email, retrieve the login details
            String username = rs.getString("username");
            String password = rs.getString("password");

            // Email configuration
            final String smtpUser = "online.mumbai.metro@gmail.com";
            final String smtpPass = "yumyezamuipydeia";

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            // Rename session to avoid conflict with JSP's implicit session object
            Session mailSession = Session.getInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(smtpUser, smtpPass);
                }
            });

            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(smtpUser));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
            message.setSubject("Your Login Details");
            message.setText("Dear User,\n\nYour login details:\nUsername: " + username + "\nPassword: " + password + "\n\nRegards,\nMumbai Metro Team");

            Transport.send(message);

            // Use JavaScript alert and redirect
            out.println("<script type='text/javascript'>");
            out.println("alert('Login details sent successfully to your email address.');");
            out.println("window.location.href = 'metrocard_login.jsp';");
            out.println("</script>");
        } else {
            // If no record found with the provided email
            out.println("<script type='text/javascript'>");
            out.println("alert('No user found with the provided email address.');");
            out.println("</script>");
        }
    } catch (Exception e) {
        out.println("<script type='text/javascript'>");
        out.println("alert('An error occurred: " + e.getMessage() + "');");
        out.println("</script>");
    } finally {
        // Close database connections and resources
        if (rs != null) rs.close();
        if (pst != null) pst.close();
        if (con != null) con.close();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/metrocard_loginstyles.css">
    <link rel="stylesheet" href="CSS/headerfooter.css">
    <link rel="stylesheet" href="CSS/DarkLightMode.css">
    <title>MetroCard Login</title>
</head>
<body>
    <%@ include file="header.jsp" %>   
    <div class="container-card">
        <h2>Forget Details</h2>
        <form action="forgetLoginDetails.jsp" method="post">
            <div class="form-group">
                <label for="email">Email Id:</label>
                <input type="text" id="email" name="email" placeholder="xyz12@gmail.com" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Get Details">
            </div>
        </form>
    </div>
</body>
<script src="index.js"></script>    
<%@ include file="footer.jsp" %>
</html>
