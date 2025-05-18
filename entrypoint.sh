#!/bin/bash

# Заменить переменными среды: GITHUB_URL и RUNNER_TOKEN
if [ -z "$https://github.com/Anvarking/CI-CD_Templates" ] || [ -z "$AR65QGMXJFNSYNOKP7ROCXTIFHS4E" ]; then
  echo "❌ Не указаны GITHUB_URL или RUNNER_TOKEN"
  exit 1
fi

# Настройка раннера
./config.sh --url "$https://github.com/Anvarking/CI-CD_Templates" --token "$AR65QGMXJFNSYNOKP7ROCXTIFHS4E" --unattended --name docker-runner --labels flask,python

# Запуск раннера
./run.sh
