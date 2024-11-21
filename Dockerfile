# Use a imagem oficial do Node.js como base
FROM node:20-alpine

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o package.json e o package-lock.json para o container
COPY package*.json ./

# Instale as dependências da aplicação
RUN npm install

# Copie todo o código-fonte da aplicação para o container
COPY . .

# Exponha a porta em que a API irá rodar
EXPOSE 3333

# Comando para rodar a API
CMD ["npm", "run", "dev"]
