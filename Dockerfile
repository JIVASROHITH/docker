# Step 1: Build the Hugo site
FROM klakegg/hugo:ext-alpine AS builder

WORKDIR /app

COPY . .

RUN hugo

FROM nginx:alpine

COPY --from=builder /app/public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
