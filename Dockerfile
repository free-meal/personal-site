FROM tiangolo/uwsgi-nginx-flask:python3.6
MAINTAINER Matthew Ealy "ealymatthewd@gmail.com"
COPY . /app
COPY ./nginx_configs/* /etc/nginx/conf.d/

