FROM ubuntu:12.04

RUN apt-get update 
#RUN export DEBIAN_FRONTEND=noninteractive && apt-get upgrade -y python 
RUN apt-get install -y python python-pip
RUN pip install --upgrade setuptools

ADD requirements.txt requirements.txt




