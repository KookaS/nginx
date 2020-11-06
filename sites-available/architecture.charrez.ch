server {

        server_name architecture.charrez.ch;

        location / {
          proxy_pass http://localhost:3000;
          proxy_http_version 1.1;
          proxy_set_header Upgrade $http_upgrade;
          proxy_set_header Connection 'upgrade';
          proxy_set_header Host $host;
          proxy_cache_bypass $http_upgrade;

          gzip on;
          gzip_disable "msie6";

          gzip_vary on;
          gzip_proxied any;
          gzip_comp_level 6;
          gzip_buffers 16 8k;
          gzip_http_version 1.1;
          gzip_min_length 256;
          gzip_types application/wasm text/plain text/css application/json application/x-javascript application/javascript text/xml application/xml application/xml+rss text/javascript application/vnd.ms-fontobject application/x-font-ttf font/opentype image/svg+xml image/x-icon;
        }
}

server {
	server_name api.architecture.charrez.ch;

	location / {
           proxy_pass http://localhost:8080;
           proxy_http_version 1.1;
           proxy_send_timeout 86400;
           proxy_read_timeout 86400;
           proxy_connect_timeout 86400;
           proxy_set_header Upgrade $http_upgrade;
           proxy_set_header Connection 'upgrade';
           proxy_set_header Host $host;
         }
}
