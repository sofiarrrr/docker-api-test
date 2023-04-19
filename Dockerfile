FROM python:3.8-slim-buster

COPY . /docker-api

WORKDIR /docker-api

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest"]

CMD tail -f /dev/null
