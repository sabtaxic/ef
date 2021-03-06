FROM node:6.10.0-alpine

LABEL maintainer="stephen.mesa@gmail.com"

RUN mkdir -p /usr/src/ef-discord-bot
WORKDIR /usr/src/ef-discord-bot
ADD . /usr/src/ef-discord-bot
RUN npm install --n
RUN npm rebuild
RUN npm run build

CMD ["npm", "start"]
