FROM node

MAINTAINER DQNEOA

RUN npm install -g express-generator
RUN cd /opt && express -e --git app

WORKDIR /opt/app
RUN npm install

# use ect as a template engine
RUN npm install ect --save
