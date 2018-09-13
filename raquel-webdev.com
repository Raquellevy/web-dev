server {
        listen 80;
        listen [::]:80;

        server_name raquel-webdev.com www.raquel-webdev.com;

        root /home/raquell/www/main;
        index index.html;

        location / {
                try_files $uri $uri/ =404;
        }
}

