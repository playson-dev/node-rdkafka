#!/usr/bin/env sh

set -eu;

echo "Start building rdkafka"

apk add --no-cache ca-certificates cyrus-sasl-dev openssl-dev make gcc g++ bash python3

while [ ! -f /usr/app/node-rdkafka/package.json ]; do
  echo "Waiting for rdkafka dir"
  sleep 1;
done

echo "rdkafka package found start building $NPM_TOKEN"

cd /usr/app/node-rdkafka/
cp /usr/app/.npmrc .

rm -rf ./node_modules ./build

npm config set registry https://npm.pkg.github.com/playson-dev

npm i

npx node-gyp rebuild

npx bundle-build-create
