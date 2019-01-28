# Use Alpine Linux
FROM nginx:alpine
RUN apk update && apk add openssl
RUN mkdir /var/plattar && cd /var/plattar
COPY nginx-selfsigned.key /var/plattar/nginx-selfsigned.key
COPY nginx-selfsigned.crt /var/plattar/nginx-selfsigned.crt
WORKDIR /usr/share/nginx/html

# nginx site conf - will be updated in start script
ADD /nginx.conf /etc/nginx/nginx.conf.tpl
ADD /start.sh /usr/bin/start.sh


# Expose Ports
EXPOSE 443
EXPOSE 80

CMD ["/bin/sh", "/usr/bin/start.sh"]
    