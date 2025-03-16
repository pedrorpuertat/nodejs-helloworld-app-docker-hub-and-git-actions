# Usa una imagen base de Node.js para esto
FROM node:20-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto
COPY package*.json ./
RUN npm install
COPY . .

# Expone el puerto en el que corre la aplicación
EXPOSE 3000

# Comando por defecto
CMD ["node", "index.js"]
