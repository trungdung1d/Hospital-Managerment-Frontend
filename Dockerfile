# Sử dụng một image có hỗ trợ Node.js
FROM node:14

# Chọn thư mục làm thư mục làm việc trong container
WORKDIR /usr/src/app

# Copy tất cả các tệp cần thiết vào thư mục làm việc
COPY package*.json ./
COPY src/index.js ./src/

# Cài đặt các phụ thuộc của ứng dụng
RUN rm -f package-lock.json
RUN rm -rf node_modules
RUN npm install -g npm@latest

# Hiển thị thông tin log khi có lỗi
RUN ls -al /root/.npm/_logs
RUN cat /root/.npm/_logs/2023-07-05T13_16_50_733Z-debug-0.log

# Mở cổng mà ứng dụng sử dụng (nếu có)
EXPOSE 3000

# Khởi chạy ứng dụng
CMD ["node", "src/index.js"]
