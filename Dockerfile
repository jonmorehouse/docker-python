FROM jonmorehouse/ubuntu

RUN apt-get install -y python \
	python-pip \
	python-dev \
	libxml2-dev \
	locales

RUN pip install --upgrade setuptools 

# bootstrap python modules
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
