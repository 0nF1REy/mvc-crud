# Usa a imagem oficial do Node.js
FROM node:latest

# Define o diretório de trabalho no container
WORKDIR /usr/src/app

# Copia os arquivos de configuração (package.json e package-lock.json) primeiro
COPY package*.json ./

# Instala as dependências (inclui devDependencies, como nodemon)
RUN npm install

# Copia o restante da aplicação
COPY . .

# A porta que será exposta no container (opcional, útil para documentação)
EXPOSE 2004
