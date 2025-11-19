#!/bin/sh
# Substitute environment variables into template
envsubst < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html
# Start Nginx
nginx -g 'daemon off;'
