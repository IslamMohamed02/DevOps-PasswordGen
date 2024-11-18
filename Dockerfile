# Use an official nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx configuration file (optional)
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/

COPY ./ /usr/share/nginx/html/

EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
