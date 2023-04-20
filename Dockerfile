FROM python:3.11.2-slim-buster

RUN mkdir app
WORKDIR /app

COPY . .

RUN pip install -r requirments.txt
RUN pip install --upgrade pip

CMD ['python3', "manage.py","runserver","0.0.0.0:8000"]
