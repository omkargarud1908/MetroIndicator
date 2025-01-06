<%@ page import ="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.*" %>
<%

try{

    String usrname=request.getParameter("usrname");
    String pwd=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/MetroIndicator","root","");
    PreparedStatement ps= con.prepareStatement("select address,cardno,name,password,expdate from registration where username=? and password=?");
    ps.setString(1,usrname);
    ps.setString(2,pwd);
    ResultSet rs;
    rs =ps.executeQuery();
    String n,ad,expdate;
    int cd;
    if(rs.next()){
         cd=rs.getInt("cardno"); 
         n=rs.getString("name");
         ad=rs.getString("address");
         expdate=rs.getString("expdate");

         

         // Storing data in the session
         session.setAttribute("cardNumber", cd);
         session.setAttribute("name", n);
    %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Metro Card</title>
    <link rel="stylesheet" href="CSS/headerfooter.css">
    <link rel="stylesheet" href="CSS/metrocard_loginstyles.css">
    
    <style>
        .thistory {
            display: flex;
            
            justify-content: center;
            margin-bottom: 20px;
        }
        .metro-card-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.metro-cardc {
    border: 2px solid #000; /* Border color and thickness */
    border-radius: 10px; /* Rounded corners */
    overflow: hidden; /* Prevent content from overflowing border */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Adding shadow for depth */
    width: 80%; /* Set the width of the card */
    max-width: 300px; /* Set a maximum width for smaller screens */
    text-align: center; /* Center align text */
}

.card-body {
    padding: 20px;
}

.card-footer {
    padding: 10px;
    text-align: center;
}
body {
    font-family: Arial, sans-serif;
    /*background-color: #f2f2f2;*/
    margin: 0;
    padding: 0;

            font-family: Arial, sans-serif;
            background-color:rgba(226, 223, 223, 0.674);
            color:rgb(5, 5, 5);
            background-image: url('../images/metroimg5.jpg'); 
            background-size: cover;
            background-position: center; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
}


        </style>
    
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="social_media_group box_shadow">

        <ul>
          <li>
            <a href="https://www.facebook.com" target="_blank">
              <img src="../images/FacebookLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.youtube.com" target="_blank">
              <img src="../images/YouTubeLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.thread.com" target="_blank">
              <img src="../images/ThreadsLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.instagram.com" target="_blank">
              <img src="../images/InstagramLogo.webp">
            </a>
          </li>
          <li>
            <a href="https://www.twitter.com" target="_blank">
              <img src="../images/TwitterLogo.webp">
            </a>
          </li>
    
        </ul>
      </div>    
    <div class="metro-card-container">
        <div class="metro-cardc">
            <div class="card-header">
                <h1>Metro Card</h1>
            </div>
            <div class="card-body">
                <p>Card Holder Name: <% out.println(n);%> </p>
                <p>Card Number: <% out.println(cd); %></p>
                <p>Address: <% out.println(ad); %> </p>
                <p>ExpiryDate: <% out.println(expdate); %> </p>
                <img src="" id="img">
            </div>
            
        </div> 
        <div class="card-footer">
            <form action="transactionHistory.jsp" method="post">
                <input type="submit" value="Transaction History">
            </form> <br>
           
            <form action="Logout.jsp" method="post">
                <input type="submit" value="Logout">
            </form>   
        </div>
    </div>
</body> 
<script src="index.js"></script>    



      <script>
            let img=document.getElementById('img');
            var name='<%=n %>';
            var cardno='<%=cd %>';
            img.src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="+(name)+(cardno)
            
      </script>
      <%@ include file="footer.jsp" %>
</html>

    <%   
    }else{
    %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Metro Card</title>
        <link rel="stylesheet" href="failedstyles.css">
        <link rel="stylesheet" href="headerfooter.css">
    </head>
    <%@ include file="header.jsp" %> 
    <body>

        <div class="boxcontainer">
            <h2>Login Failed</h2>
            <a href="metrocard_login.jsp" class="buttons">Login</a>
        </div>
        
        </body>
        </html>
        <script src="index.js"></script>    
        <%@ include file="footer.jsp" %>


       <%
    }
    
}catch(Exception e){
    out.println(e);
}
%>