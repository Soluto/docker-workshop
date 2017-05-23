FROM node
COPY app.js package.json
RUN npm install
