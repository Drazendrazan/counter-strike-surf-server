FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    dpkg --add-architecture i386 && \
    apt install -y --no-install-recommends lib32gcc1 && \
    apt purge -y --auto-remove &&\
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/Server

COPY . ../

CMD ["./start.sh"]
