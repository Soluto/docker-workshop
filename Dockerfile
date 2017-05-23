FROM node
COPY ./src /src
WORKDIR /src
RUN npm install
CMD node app.js
