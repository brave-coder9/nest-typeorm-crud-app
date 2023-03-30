FROM node:19

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4009

CMD ["npm", "run", "start:prod"]