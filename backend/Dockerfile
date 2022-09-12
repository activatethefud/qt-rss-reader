#FROM alpine
FROM debian

COPY ./ /usr/qt-rss-backend
WORKDIR /usr/qt-rss-backend

#RUN apk add cmake make gcc
RUN apt-get update \
        && apt-get install libmariadb-dev python3-pip -y

RUN pip3 install --upgrade mariadb flask bs4

ENTRYPOINT ["flask","run","--host=0.0.0.0"]
