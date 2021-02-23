FROM node:alpine

WORKDIR /usr/wss
COPY ./package.json  ./
COPY ./package-lock.json  ./
RUN npm install

COPY ./index.js  ./.

CMD ["npm", "start"]
