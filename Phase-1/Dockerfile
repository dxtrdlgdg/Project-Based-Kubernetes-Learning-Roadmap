FROM nginx:latest

# Copy template and script
COPY index.html.template /usr/share/nginx/html/index.html.template
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
