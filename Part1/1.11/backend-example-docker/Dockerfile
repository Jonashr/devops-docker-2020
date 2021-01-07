FROM node:10-alpine

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

ENV FRONT_URL=http://localhost:5000

CMD ["npm", "start"]