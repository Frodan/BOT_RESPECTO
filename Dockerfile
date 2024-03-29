FROM python:3.11.2-slim-buster

RUN adduser --disabled-password app --shell /bin/sh --home /usr/src/app_python --quiet

WORKDIR /usr/src/app_python

COPY requirements.txt .

COPY src/ src/

USER app

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python", "./src/main.py" ]