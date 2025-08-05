FROM ubuntu:20.04

RUN apt update && apt install -y tinyproxy curl

COPY proxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["tinyproxy", "-d"]
