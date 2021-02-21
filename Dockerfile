FROM mhart/alpine-node

EXPOSE 3001
WORKDIR /app
COPY . /app
RUN npm install
CMD ["node", "index.js"]