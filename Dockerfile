FROM node:alpine

WORKDIR /app

COPY index.js package.json /app/

ENV WORK_DIR=/tmp

RUN apk update && \
    apk add --no-cache bash curl procps openssl && \
    npm install

CMD ["node", "index.js"]
