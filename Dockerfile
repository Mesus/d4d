FROM ubuntu
MAINTAINER vicent <brahmas@daocloud.io>
RUN apt-get update
RUN apt-get -y install python-pip
RUN pip install Django
COPY / /
RUN chmod +x run.sh
EXPOSE 8080
CMD ["/bin/sh","run.sh"]

