
    function fetchPuneMetroNews() {
        fetch('https://newsapi.org/v2/everything?q=pune%20metro&apiKey=d9d56f99b3c140a78cbfadfd72e4a04f')
        .then(response => response.json())
        .then(data => {
            const newsContainer = document.getElementById('news');
            newsContainer.innerHTML = '';
            data.articles.forEach(article => {
                if (article.title.toLowerCase().includes('pune metro') || article.description.toLowerCase().includes('pune metro')) {
                    const articleElement = document.createElement('div');
                    articleElement.classList.add('article');

                    const thumbnailElement = document.createElement('img');
                    thumbnailElement.src = article.urlToImage || 'placeholder.png';
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
                }
            });

            // Start auto-scrolling after news are loaded
            autoScroll();
        })
        .catch(error => {
            console.error('Error fetching Pune Metro news:', error);
        });
    }

    window.onload = fetchPuneMetroNews;

    function autoScroll() {
        const newsContainer = document.getElementById('news');
        let scrollPosition = 0;

        setInterval(() => {
            scrollPosition += 1;
            if (scrollPosition >= newsContainer.scrollHeight - newsContainer.clientHeight) {
                scrollPosition = 0;
            }
            newsContainer.scrollTop = scrollPosition;
        }, 50);
    }