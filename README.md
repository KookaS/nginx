# nginx

## Pull only nginx.conf

    sudo wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/KookaS/nginx/main/nginx.conf
    
## Pull entire project

    mkdir /home/ocharrez/downloads

    mkdir /home/ocharrez/downloads/nginx
    
    cd /home/ocharrez/downloads/nginx
    
    git init
    
    git pull https://github.com/KookaS/nginx.git
    
    sudo cp -ru /home/ocharrez/downloads/nginx/* /etc/nginx/
    
    sudo rm -f /etc/nginx/README.md
    
    sudo cp /etc/nginx/sites-available/<domain_name> /etc/nginx/sites-enabled/<domain_name>> 

## Certbot

https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx