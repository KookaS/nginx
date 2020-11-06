# nginx

## Pull only nginx.conf

    sudo wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/KookaS/nginx/main/nginx.conf
    
## Pull entire project

    mkdir /home/ocharrez/downloads/nginx
    
    cd /home/ocharrez/downlods/nginx
    
    git pull https://github.com/KookaS/nginx.git
    
    cp -ru home/ocharrez/downloads/nginx/* etc/nginx/
    
    rm etc/nginx/README.md
    
copy from sites-available to sites-enabled

## Certbot

https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx
