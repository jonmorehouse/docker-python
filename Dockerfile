FROM jonmorehouse/ubuntu

RUN apt-get install -y python \
	python-pip \
	python-dev \
	libxml2-dev \
	locales

# ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

RUN pip install --upgrade setuptools 

# bootstrap python modules
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
