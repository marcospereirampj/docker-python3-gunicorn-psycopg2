FROM python:3.6
MAINTAINER Marcos Pereira marcospereira.mpj@gmail.com

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
	python3 \
	python3-dev \
	python3-setuptools \
	python3-pip 
	python-psycopg2 && \
	pip3 install -U pip setuptools && \
        pip3 install psycopg2 && \
        pip3 install gunicorn

EXPOSE 80
