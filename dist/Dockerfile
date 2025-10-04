FROM nginx:stable-alpine

# Copy pre-built dist folder
COPY dist/ /usr/share/nginx/html

# Expose port 3000 (or map host port 3000)
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
