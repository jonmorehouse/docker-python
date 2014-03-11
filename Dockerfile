FROM ubuntu:latest

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y python python-pip git gcc make python-dev 
RUN pip install --upgrade setuptools 

# bootstrap python modules
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt


