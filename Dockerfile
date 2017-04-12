FROM ubuntu
MAINTAINER vicent <brahmas@daocloud.io>
RUN apt-get -y install python-pip
RUN pip install Django
COPY / /
RUN chmod +x run.sh
EXPOSE 8080
ENTRYPOINT ["run.sh"]

