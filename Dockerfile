FROM node:20.12.0-alpine3.19

WORKDIR /usr/app/

RUN npm install -g yarn

COPY src ./
COPY package.json ./
COPY tsconfig.json ./
COPY yarn.lock ./

CMD ["npm", "start"]