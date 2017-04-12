FROM ubuntu
MAINTAINER vicent <brahmas@daocloud.io>
RUN apt-get update
RUN apt-get -y install python-pip
RUN pip install Django
COPY / /
EXPOSE 8080
CMD ["python manage.py runserver 0.0.0.0:8080"]

