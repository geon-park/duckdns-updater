FROM alpine:latest
MAINTAINER psychoria

# install curl
RUN apk add --no-cache bash curl

# create data directory
RUN mkdir -p /data
WORKDIR /data

# copy files
ADD . /data
RUN chmod -R 755 *
RUN /usr/bin/crontab crontab

CMD ["/data/entry.sh"]
