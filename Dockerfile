FROM python:3.8-slim-buster

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

ENV PYTHONUNBUFFERED 1

WORKDIR /uno-telegram-bot

COPY . /uno-telegram-bot

RUN pip install -r /uno-telegram-bot/requirements.txt && \
    echo ${TOKEN} > /uno-telegram-bot/TOKEN

ENTRYPOINT ["python3", "bot.py"]
