# Menggunakan image Node.js versi 16 sebagai base image
FROM node:16

# Set working directory di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstall dependensi
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan aplikasi
CMD ["npm", "start"]
