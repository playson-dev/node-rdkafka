FROM node:18.17.0-alpine

WORKDIR /usr/app

ADD ./builder.sh .
ADD ./.npmrc .

RUN chmod +x ./builder.sh

ENTRYPOINT /usr/app/builder.sh
