FROM python:3.8 as build-python

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /code
WORKDIR /code
COPY . /code
VOLUME .

CMD ["python", "main.py"]