
        const themeToggle = document.getElementById('themeToggle');
        const themeIcon = document.getElementById('themeIcon');

        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('dark-mode');

            // Update the icon
            if (document.body.classList.contains('dark-mode')) {
                themeIcon.textContent = 'dark_mode';
            } else {
                themeIcon.textContent = 'light_mode';
            }
        });

        // Optional: Preserve theme across page reloads
        const savedTheme = localStorage.getItem('theme');
        if (savedTheme === 'dark') {
            document.body.classList.add('dark-mode');
            themeIcon.textContent = 'dark_mode';
        }

        themeToggle.addEventListener('click', () => {
            const currentTheme = document.body.classList.contains('dark-mode') ? 'dark' : 'light';
            localStorage.setItem('theme', currentTheme);
        });
    