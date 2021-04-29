FROM node:13

WORKDIR /app-i

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "run", "electron-starter" ]