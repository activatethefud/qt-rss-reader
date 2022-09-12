#FROM alpine
FROM debian

COPY ./ /usr/qt-rss-backend
WORKDIR /usr/qt-rss-backend

#RUN apk add cmake make gcc
RUN apt-get update \
        && apt-get install libmariadb-dev python3-pip -y

RUN pip3 install --upgrade mariadb flask beautifulsoup4 requests lxml

ENTRYPOINT ["python3","app.py"]
