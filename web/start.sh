#!/bin/bash

# use a sed to insert the fastcgi server (due to rancher resolution bug this can be api/api.web)
sed -e "s/##API_LINK_ADDR##/$API_LINK_ADDR/g" /etc/nginx/nginx.conf.tpl > /etc/nginx/nginx.conf
echo $API_LINK_ADDR
nginx -g "daemon off;"