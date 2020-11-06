# nginx

## Pull only nginx.conf

    sudo wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/KookaS/nginx/main/nginx.conf
    
## Pull entire project

    mkdir /home/ocharrez/downloads
    
    cd /home/ocharrez/downlods
    
    git pull https://github.com/KookaS/nginx.git
    
    cp -ru home/ocharrez/downloads/nginx/* etc/nginx/
    
    rm etc/nginx/README.md
