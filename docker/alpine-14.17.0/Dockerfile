FROM node:14.17.0-alpine

WORKDIR /usr/app

ADD ./builder.sh .
ADD ./.npmrc .

RUN apk add --no-cache \
    ca-certificates \
    cyrus-sasl-dev \
    openssl-dev \
    make \
    gcc \
    g++ \
    bash \
    python3 && \
    npm install -g node-gyp && \
    chmod +x ./builder.sh

ENTRYPOINT /usr/app/builder.sh
