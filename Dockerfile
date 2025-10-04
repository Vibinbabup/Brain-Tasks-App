# Use official Nginx image
FROM nginx:stable-alpine

# Copy the pre-built dist folder into Nginx
COPY dist/ /usr/share/nginx/html

# Expose port 3000
EXPOSE 3000

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
