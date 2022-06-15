FROM ubuntu
MAINTAINER Sachin Sharma
WORKDIR /service
COPY requirements.txt .
USER 0
RUN apt-get install -y git
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
