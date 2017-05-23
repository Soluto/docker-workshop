FROM node
COPY ./src /src
WORKDIR /src
RUN npm install
CMD app.js
