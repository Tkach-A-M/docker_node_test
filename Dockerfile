FROM node

WORKDIR /app
#чтобы лишний раз не собирать образ
COPY package.json /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]