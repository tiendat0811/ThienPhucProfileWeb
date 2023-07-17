# Sử dụng một image có chứa Node.js
FROM node:18.16.1-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Copy các tệp tin từ thư mục hiện tại (trang web của bạn) vào container
COPY . .

# Cài đặt một máy chủ web đơn giản để phục vụ trang HTML
RUN npm install http-server -g

# Chạy máy chủ web trên cổng 5500
CMD ["http-server", "-p", "5500"]
