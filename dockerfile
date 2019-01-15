FROM ubuntu:16.04
MAINTAINER Lewis Reeves "reeves.lewis@gmail.com"
RUN apt-get update -y && apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install ddtrace
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
