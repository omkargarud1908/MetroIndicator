<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <title>Mumbai Metro - News</title>
    <link rel="icon" type="images/jpg" href="images/mumbaimetrologo.jpg">
    
    <style>
    .ubuntu-medium {
        font-family: "Ubuntu", sans-serif;
        font-weight: 500;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        position: relative;
        margin-top: 100px;
    }

    .grid-container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
        grid-gap: 20px;
        max-height: 600px;
        overflow-y: auto;
    }

    .article {
        display: flex;
        flex-direction: column;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
    }

    .article img {
        width: 100%;
        height: auto;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
    }

    .text-content {
        flex-grow: 1;
        padding: 5px 0;
    }

    .article h2 {
        margin-top: 20px;
        font-size: 18px;
    }

    .article a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    .article a:hover {
        text-decoration: underline;
    }

    #heading {
        font-size: 30px;
        margin-left: 100px;
    }
    
    #heading h2 {
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        color: rgb(5 157 178);
    }

    .line {
        position: relative;
    }

    .line::after {
        content: '';
        position: absolute;
        left: 0;
        bottom: 0;
        width: 7%;
        height: 5px;
        background-color: rgb(208, 68, 136);
    }

    .box {
        border: 0.5px solid grey;
        height: auto;
        width: 1295px;
        border-radius: 16px;
        margin-left: 90px;  
        margin-top: 20px; 
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.5);
        padding: 20px;
    }
    </style>
    
</head>
<body class="ubuntu-medium">
    <%@ include file="header.jsp" %>
    <div class="social_media_group box_shadow">

        <ul>
          <li>
            <a href="https://www.facebook.com" target="_blank">
              <img src="images/FacebookLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.youtube.com" target="_blank">
              <img src="images/YouTubeLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.thread.com" target="_blank">
              <img src="images/ThreadsLogo.png">
            </a>
          </li>
          <li>
            <a href="https://www.instagram.com" target="_blank">
              <img src="images/InstagramLogo.webp">
            </a>
          </li>
          <li>
            <a href="https://www.twitter.com" target="_blank">
              <img src="images/TwitterLogo.webp">
            </a>
          </li>
    
        </ul>
      </div>
    <div id="heading">
        <i><h2 class="line">Mumbai Metro News</h2></i>
    </div>
    <div class="tab-contents">
        <div class="box">
            <div class="grid-container" id="news"></div>
        </div>
    </div>

<script>
    function fetchMumbaiMetroNews() {
        fetch('https://newsapi.org/v2/everything?q=mumbai%20metro&apiKey=e5fe652b18574788b3db075a5fc7a4c3')
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            const newsContainer = document.getElementById('news');
            newsContainer.innerHTML = '';
            
            // Filter only articles explicitly mentioning "Mumbai Metro"
            const filteredArticles = data.articles.filter(article => 
                article.title.toLowerCase().includes('mumbai metro') || 
                (article.description && article.description.toLowerCase().includes('mumbai metro'))
            );

            if (filteredArticles.length === 0) {
                newsContainer.innerHTML = '<p>No news articles found about Mumbai Metro.</p>';
                return;
            }

            filteredArticles.forEach(article => {
                const articleElement = document.createElement('div');
                articleElement.classList.add('article');
                
                const thumbnailElement = document.createElement('img');
                thumbnailElement.src = article.urlToImage || 'images/placeholder.png';
                thumbnailElement.alt = 'Thumbnail';
                
                const textContent = document.createElement('div');
                textContent.classList.add('text-content');
                
                const titleElement = document.createElement('h2');
                titleElement.textContent = article.title;
                
                const readMoreLink = document.createElement('a');
                readMoreLink.textContent = 'Read more';
                readMoreLink.href = article.url;
                readMoreLink.target = '_blank';
                
                textContent.appendChild(titleElement);
                textContent.appendChild(readMoreLink);
                articleElement.appendChild(thumbnailElement);
                articleElement.appendChild(textContent);
                newsContainer.appendChild(articleElement);
            });
        })
        .catch(error => console.error('Error fetching Mumbai Metro news:', error));
    }

    window.onload = fetchMumbaiMetroNews;
</script>
<br>
</body>
<%@ include file="footer.jsp" %>
</html>
