FROM python:2.7.7
MAINTAINER Jama Software <devops@jamasoftware.com>

RUN apt-get update
RUN apt-get install wamerican

# PhantomJS dependencies
RUN apt-get update \
  && apt-get install -yq curl \
  && curl --silent --location https://deb.nodesource.com/setup_0.12 | bash - \
  && apt-get install -yq nodejs \
  && npm install npm -g \
  && npm install phantomjs -g

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install -U pip==7.1.2
