# Usar uma imagem base com Node.js
FROM node:16

# Criar um diretório de trabalho
WORKDIR /usr/src/app

# Copiar os arquivos da coleção para o diretório de trabalho
COPY Collections/ /usr/src/app/Collections/

# Instalar o Newman
RUN npm install -g newman

# Comando para rodar os testes
CMD ["newman", "run", "Collections/Marvel API Test.postman_collection.json", "-r", "cli,json", "--reporter-json-export", "results.json"]