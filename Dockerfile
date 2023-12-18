FROM node:alpine
WORKDIR /app

COPY package*.json ./ 

RUN npm install 

COPY . .

RUN npm install -g pm2

EXPOSE 3000

CMD ["pm2-runtime",app.js]

