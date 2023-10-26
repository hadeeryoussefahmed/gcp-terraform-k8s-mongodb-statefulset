FROM node:16 as builder

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY .  /app

EXPOSE 3000

CMD ["node", "index.js"]