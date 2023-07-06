# Sử dụng base image của Node.js
FROM node:14-alpine AS builder

# Đặt thư mục làm việc cho ứng dụng
WORKDIR /app

# Copy package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm ci

# Copy toàn bộ mã nguồn ứng dụng
COPY . .

# Build ứng dụng React
RUN npm run build

# Sử dụng base image nginx nhẹ để chạy ứng dụng
FROM nginx:alpine

# Copy các tệp tin cấu hình của nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy ứng dụng React đã được build từ stage trước
COPY --from=builder /app/build /usr/share/nginx/html

# Mở cổng 80 để truy cập ứng dụng
EXPOSE 80

# Khởi chạy nginx
CMD ["nginx", "-g", "daemon off;"]
