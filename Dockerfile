FROM node:latest

WORDIR /myapp

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm","start"]