FROM fedora:latest
MAINTAINER Matthew Ealy "ealymatthewd@gmail.com"
RUN dnf upgrade -y
RUN dnf install -y python-pip python-devel @development-tools
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["personal_site.py"]