# Базовый образ Ubuntu
FROM ubuntu:22.04

# Установка зависимостей
RUN apt-get update && \
    apt-get install -y curl tar git python3 python3-pip sudo && \
    apt-get clean

# Установка Python-зависимостей
RUN pip3 install --upgrade pip flask

# Создаем директорию для раннера
WORKDIR /actions-runner

# Скачиваем GitHub Actions Runner
ENV RUNNER_VERSION=2.317.0
RUN curl -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz && \
    tar xzf actions-runner.tar.gz && \
    rm actions-runner.tar.gz

# Копируем скрипт запуска
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Устанавливаем рабочую директорию
ENTRYPOINT ["/entrypoint.sh"]
