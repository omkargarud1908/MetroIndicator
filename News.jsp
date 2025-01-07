<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="CSS/styles.css" />
    <link rel="stylesheet" href="CSS/news.css">
    <title>Mumbai Metro - News</title>
    <link rel="icon" type="images/jpg" href="images/thead.png">
</head>
<body class="ubuntu-medium">
    <%@ include file="header.jsp" %>
    <%@ include file="SocialMedia.jsp" %>
    <div id="heading">
        <i><h2 class="line">Mumbai Metro News</h2></i>
    </div>
    <div class="tab-contents">
        <div class="box">
            <div class="grid-container" id="news"></div>
        </div>
    </div>

    <!-- Scroll to Top Button -->
    <button id="scrollToTopBtn" title="Go to top">↑</button>

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

        function autoScroll() {
            const gridContainer = document.getElementById('news');
            setInterval(() => {
                gridContainer.scrollBy(0, 2);  // Scroll down 2px every interval
                if (gridContainer.scrollTop + gridContainer.clientHeight >= gridContainer.scrollHeight) {
                    gridContainer.scrollTop = 0;  // If at the bottom, reset to top
                }
            }, 100);  // Adjust the speed of scrolling here (100ms)
        }

        // Call this function on window load to start auto-scrolling
        window.onload = function() {
            fetchMumbaiMetroNews();
            autoScroll();
        };

        // Scroll to Top Button logic
        const scrollToTopBtn = document.getElementById('scrollToTopBtn');

        window.onscroll = function() {
            if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
                scrollToTopBtn.style.display = 'block';
            } else {
                scrollToTopBtn.style.display = 'none';
            }
        };

        scrollToTopBtn.onclick = function() {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        };
    </script>
    <br>
</body>
<%@ include file="footer.jsp" %>
</html>
