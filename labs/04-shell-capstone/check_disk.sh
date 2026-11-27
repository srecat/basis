#!/bin/bash
set -euo pipefail

# Настройки
THRESHOLD=80 # Порог в процентах
MOUNT_POINT="/"
LOG_FILE="/tmp/disk_alert.log"

# Получаем текущий процент заполнения диска
# df -P выводит в одну строку, tail -1 берет диск, awk достает 5 колонку, tr убирает знак %
USAGE=$(df -P "$MOUNT_POINT" | tail -1 | awk '{print $5}' | tr -d '%')

# Проверяем, больше ли использование порога
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - WARNING: Disk usage on $MOUNT_POINT is ${USAGE}% (Threshold: ${THRESHOLD}%)" >> "$LOG_FILE"
    exit 1 # Возвращаем код ошибки (чтобы CI/CD увидел проблему)
else
    echo "OK: Disk usage on $MOUNT_POINT is ${USAGE}%"
    exit 0 # Возвращаем код успеха
fi
