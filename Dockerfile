FROM python:3.6.8-alpine3.8

LABEL maintainer="marcospereira.mpj@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
	gcc \
	musl-dev \
	python3-dev \
	postgresql-dev \
	&& \
	pip3 install -U pip setuptools && \
        pip3 install psycopg2 && \
        pip3 install gunicorn

EXPOSE 80
