FROM python:3.9.7-slim-buster

WORKDIR .
COPY . .

RUN apt update && apt install -y ffmpeg

RUN pip3 install -r requirements.txt

CMD gunicorn app:app & python3 main.py

