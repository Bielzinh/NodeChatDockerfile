#Imagem do node, latest significa a ultima versão
FROM node:latest
# criando um diretório para o container, tudo que acontecer na aplicação vai ficar aqui, inclusive a aplicação
WORKDIR /usr/src/app
#copia o package json para a pasta criada para o container acima(workdir)
COPY package.json ./
#cria o node modulos, caso ele exista não será criado, pois está no documento dockerignore
RUN npm install
#copia toda a aplicação para a nossa pasta criada acima(wordir)
COPY . .
#Expõe a porta 3000 da aplicação
EXPOSE 3000
# Rodar a aplicação, iniciando pelo arquivo server.js



