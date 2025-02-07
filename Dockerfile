FROM ubuntu
MAINTAINER Sachin Sharma
WORKDIR /service
COPY requirements.txt .
USER 0
RUN apt-get update
RUN apt-get install debconf
RUN apt-get install -y vim
RUN apt-get install -y python3-pip
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
