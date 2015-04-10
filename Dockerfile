FROM node

MAINTAINER DQNEOA

RUN npm install -g express-generator

# generate project
RUN cd /opt && express -e --git app

# for development help
RUN npm install -g node-dev

# install express
WORKDIR /opt/app
RUN npm install

# use mongo drivee
RUN npm install mongodb --save

# use ect as a template engine
RUN npm install ect --save

ENV DEBUG app:*

CMD ["node-dev", "./bin/www"]
