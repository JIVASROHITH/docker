# Step 1: Build the Hugo site
# Use an official nginx image as a base

FROM nginx:alpine


# Create a new directory for our static files

WORKDIR /usr/share/nginx/html


# Copy our static files into the container

COPY . .


# Expose port 80 for nginx

EXPOSE 80


# Run nginx when the container starts

CMD ["nginx", "-g", "daemon off;"]
