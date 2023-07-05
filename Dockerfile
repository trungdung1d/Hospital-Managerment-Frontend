# Sử dụng một image có hỗ trợ Node.js
FROM node:latest

# Chọn thư mục làm thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy tất cả các tệp cần thiết vào thư mục làm việc
COPY package*.json ./
COPY index.js ./

# Cài đặt các phụ thuộc của ứng dụng
RUN npm install

# Mở cổng mà ứng dụng sử dụng (nếu có)
EXPOSE 3000

# Khởi chạy ứng dụng
CMD ["node", "index.js"]

