FROM node:19.03.13

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

RUN npm install -g pm2

COPY . .

EXPOSE 3000

CMD [ "pm2-docker", "start", "server.js" ]