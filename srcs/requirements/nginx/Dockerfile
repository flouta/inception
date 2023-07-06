FROM alpine:3.17

RUN	apk update && apk upgrade && apk add --no-cache \
        nginx \
        openssl

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/raccoman.pem \
        -keyout /etc/nginx/ssl/raccoman.key \
        -subj "/C=IT/ST=Rome/L=Rome/O=1337/OU=raccoman/CN=flouta/"

# nginx config
RUN mkdir -p /run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
