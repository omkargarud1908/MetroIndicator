

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="CSS/admin_loginstyles.css">
<link rel="stylesheet" href="CSS/headerfooter.css">
<title>Admin Login</title>
<link rel="icon" type="images/jpg" href="images/thead.png">
</head>
<body>
    <%@ include file="AdminLoginHeader.jsp" %>    
<div class="container-card">
    <h2>Admin Login</h2>
    <form action="AdminLoginServlet.jsp" method="post">
        <div class="form-group">
            <label for="metroUser">Username :</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Login">
        </div>
    </form>
</div>
</body>
<%@ include file="AdminLoginFooter.jsp" %>

</html>
