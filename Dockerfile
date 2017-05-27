FROM node
COPY ./src /src
RUN chmod 755 /src/wait-for-it.sh
WORKDIR /src
RUN npm install
EXPOSE 5858
CMD ["./wait-for-it.sh", "-t", "0", "elastic-docker:9200", "--", "node", "app.js"]
