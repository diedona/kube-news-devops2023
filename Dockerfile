FROM node:18-alpine3.17
WORKDIR /app
COPY ./src/package*.json .
RUN npm install
COPY ./src .
RUN npm ci --omit=dev
EXPOSE 8080
CMD [ "node", "server.js" ]