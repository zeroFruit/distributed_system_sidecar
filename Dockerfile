FROM node:8

RUN npm install -g nodemon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && mv /usr/src/app/node_modules /node_modules

COPY . .

EXPOSE 8080

CMD ["nodemon"]
