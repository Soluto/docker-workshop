FROM node
COPY ./src /src
WORKDIR /src
RUN npm install
