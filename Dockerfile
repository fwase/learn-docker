# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /usr/src/app
ENV FLASK_APP app.py

RUN pip install pipenv==2020.6.2

COPY . /usr/src/app/

RUN pipenv sync

EXPOSE 8080

CMD ["pipenv", "run", "python", "-m" , "flask", "run", "--host=0.0.0.0"]
