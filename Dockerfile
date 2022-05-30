FROM node:18-alpine3.14

ENV HOST=mysql \
    USER=mysqluser \
    PASSWORD=1234 \
    DB=testdb

RUN mkdir -p /home/app
WORKDIR /home/app
COPY . /home/app

RUN npm install

CMD ["node", "/home/app/server.js"]