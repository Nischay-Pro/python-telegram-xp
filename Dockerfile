ARG BASE=alpine:3.15

FROM ${BASE}

LABEL maintainer="Nischay Mamidi <NischayPro@protonmail.com>"

COPY entrypoint.sh /entrypoint.sh

COPY . /app

WORKDIR /app

RUN apk add --no-cache python3 py-pip &&\
    pip3 install gtts python-telegram-bot

VOLUME [ "/app/database" , "/app/config.json" ]

ENTRYPOINT [ "/entrypoint.sh" ]
