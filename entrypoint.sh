#!/bin/bash

# Проверка: переданы ли переменные окружения
if [ -z "$GITHUB_URL" ] || [ -z "$RUNNER_TOKEN" ]; then
  echo "❌ Не указаны GITHUB_URL или RUNNER_TOKEN"
  exit 1
fi

# Настройка раннера
./config.sh --url "$GITHUB_URL" --token "$RUNNER_TOKEN" --unattended --name docker-runner --labels flask,python

# Запуск раннера
./run.sh
