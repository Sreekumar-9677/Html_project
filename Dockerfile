# Use official NGINX web server image
FROM nginx:alpine

# Remove default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML and CSS files to NGINX's public directory
COPY . /usr/share/nginx/html

