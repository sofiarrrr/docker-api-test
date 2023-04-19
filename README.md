# docker-api-test
api-test run in Dockerfile


RUN TESTS using command :: docker build --tag docker-api .


```FROM python:3.8-slim-buster

COPY . /docker-api-test

WORKDIR /docker-api-test

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest"]

CMD tail -f /dev/null
```



dockerfile copies the root dir inside the container sets it as the work directory, installs all the plugins inside requirements.txt and runs pytest (by this runs all the test_), also could be pytest -sv for more details.
