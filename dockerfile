#Informa a imagem base
FROM node 
#Informa o diretório padrão
WORKDIR /
#Variáveis de ambiente do dockerfile
ARG PORT=3000
#Variável de ambiente da aplicação
ENV PORT=$PORT
#Deixa a porta da máquina visivel para a aplicação
EXPOSE $PORT
#Copia o arquivo do diretório em que estamos para a imagem que estamos criando
COPY ./ .
#comando em bash para pré inicializar a aplicação
RUN npm install
#Comando que será executado quando a imagem for inicializada
ENTRYPOINT npm start