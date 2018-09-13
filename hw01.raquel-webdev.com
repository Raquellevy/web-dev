server {
        listen 80;
        listen [::]:80;

        server_name hw01.raquel-webdev.com;

        root /home/raquell/www/hw01;
        index index.html;

        location / {
                try_files $uri $uri/ =404;
        }
}

