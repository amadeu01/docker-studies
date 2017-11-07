FROM python:2.7.14
MAINTAINER Amadeu Cavalcante (amadeu01@gmail.com)

ENV DEBIAN_FRONTEND noninteractive

##############################################################################
# OS Updates and Python packages
##############################################################################

RUN apt-get update \
    && apt-get upgrade -y \
        && apt-get install -y

RUN apt-get install -y apt-utils mysql-server
RUN apt-get install -y nginx
RUN mkdir -p /run/nginx
	# Libs required for geospatial libraries on Debian...
RUN apt-get -y install binutils libproj-dev gdal-bin
	
	##############################################################################
	# A Few pip installs not commonly in requirements.txt
	##############################################################################

RUN apt-get install -y nano wget vim
RUN pip install uwsgi
RUN apt-get install -y python-imaging python-psycopg2

	##############################################################################
	# setup startup script for gunicord WSGI service
	##############################################################################

RUN groupadd agileprocess
RUN useradd agile -G agileprocess
RUN mkdir -p /var/log/agile/ && chown -R agile /var/log/agile/ && chmod -R u+rX /var/log/agile/
RUN mkdir -p /var/run/agile/ && chown -R agile /var/run/agile/ && chmod -R u+rX /var/run/agile/

	##############################################################################
	# Install and configure supervisord
	##############################################################################

RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
