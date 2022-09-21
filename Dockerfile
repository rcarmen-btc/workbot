FROM python:latest

WORKDIR /app

RUN apt-get update && apt-get upgrade
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "python3", "main.py"]
