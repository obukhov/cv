FROM node:alpine

ADD root/convert.js /root/convert.js
RUN cd /root; npm install markdown-pdf

WORKDIR /root
