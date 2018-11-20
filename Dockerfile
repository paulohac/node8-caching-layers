FROM node:carbon-alpine

WORKDIR /opt/app

RUN apk upgrade \
 && apk add git --no-cache \
 && npm install pm2 -g \
 && npm install nodemon -g
 
# Layering package.json to force not use of cache when this file changes
COPY package.json /opt/app/package.json
RUN npm install

# adding the code without the need to run npm install every time
COPY . /opt/app

CMD ["pm2","start"]
