FROM node:alpine as app-build

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install

COPY . .

RUN npm install && npm run build

FROM node:slim

WORKDIR /usr/src/app

COPY --from=app-build /usr/src/app/dist ./dist

RUN npm install -g serve

USER node

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "./dist"]