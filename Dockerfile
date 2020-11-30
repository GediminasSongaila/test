FROM node

RUN mkdir /usr/usr/app
WORKDIR /usr/src/app

ENV PATH /usr/usr/app/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
