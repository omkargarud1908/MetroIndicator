<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pune Metro-TimeTable</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="CSS/timetable.css">
    <link rel="stylesheet" href="farecalculator.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="images/jpg" href="images/mumbaimetrologo.jpg">
    
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
</head>
        

</head>
<%@ include file="header.jsp" %>
<%@ include file="SocialMedia.jsp" %>

<body>

    <div id="heading">
        <i><h2 class="line">Train Time Table</h2></i>
        </div>
        <div class="timetableimg">
            <button onclick="englishbutton()" id="englishbutton">English</button>
            <button onclick="marathibutton()" id="marathibutton">&#2350;&#2352;&#2366;&#2336;&#2368;</button><hr>
        </div>
        
        <div>
            
            <img src="images/fareimg.jpg" alt="" id="fareimg">
        </div>
    

</body>

<script>
    english = document.getElementById('englishbutton');
english.style.backgroundColor = 'rgb(5 157 178)';
english.style.color ='white';
marathi = document.getElementById('marathibutton');
marathi.style.backgroundColor='white';

var img = document.getElementById('fareimg');
function englishbutton()
{
    english = document.getElementById('englishbutton');
    marathi = document.getElementById('marathibutton');

    english.style.backgroundColor = 'rgb(5 157 178)';
    english.style.color='white'
    marathi.style.backgroundColor = 'white';
    marathi.style.color='black';

    img.src='images/fareimg.jpg';
    
}
function marathibutton()
{
    marathi = document.getElementById('marathibutton');
    english = document.getElementById('englishbutton');

    english.style.backgroundColor = 'white';
    english.style.color='black'
    marathi.style.backgroundColor = 'rgb(5 157 178)';
    marathi.style.color='white'


    img.src='images/fareimg';
}
  
</script><br>
<script src="index.js"></script>    
<%@ include file="footer.jsp" %>

</html>
