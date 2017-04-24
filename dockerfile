FROM node:7-alpine
WORKDIR /build
COPY package.json /build
RUN npm install --production --silent
COPY . /build
VOLUME /build

EXPOSE 3000
RUN npm run build
CMD npm start
