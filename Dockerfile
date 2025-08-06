FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Add custom config that listens on port 8080
COPY nginx.conf /etc/nginx/conf.d/

# Copy HTML and CSS files to the web root
COPY . /usr/share/nginx/html
