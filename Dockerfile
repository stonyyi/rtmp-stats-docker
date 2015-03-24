FROM       cine/base-image-docker

MAINTAINER Thomas Shafer <thomas@cine.io>

WORKDIR /usr/src
RUN git clone git@github.com:cine-io/cine.git

# install base packages
WORKDIR /usr/src/cine
RUN npm install --production

# install rtc packages
WORKDIR /usr/src/cine/apps/rtmp_stats/
RUN npm install --production

WORKDIR /usr/src/cine

EXPOSE 80

# start the rtc-transmuxer
CMD ./node_modules/.bin/coffee apps/rtmp_stats/index.coffee
