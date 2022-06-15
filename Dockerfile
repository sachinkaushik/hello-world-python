FROM python:3-alpine
MAINTAINER Sachin Sharma
WORKDIR /service
COPY requirements.txt .
RUN apt-get install -y git
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
