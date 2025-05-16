# Dockerfile

FROM python:3.12-slim

WORKDIR /app

# Установим нужные зависимости
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Установим инструменты для тестов и PEP8
RUN pip install flake8

# На случай, если тебе нужно запускать команду по умолчанию
CMD [ "bash" ]
