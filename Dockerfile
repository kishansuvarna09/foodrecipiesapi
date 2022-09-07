FROM node:14

EXPOSE 3001

WORKDIR /src

RUN npm install npm@latest -g

COPY package.json ./

RUN npm install

COPY . .

CMD ["node","app/index.js"]