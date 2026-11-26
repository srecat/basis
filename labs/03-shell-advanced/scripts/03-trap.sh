#!/bin/bash
TEMP_FILE="/tmp/my_temp_data.txt"
touch "$TEMP_FILE"
cleanup() {
    echo -e "\n[TRAP] Перехвачен сигнал завершения! Убираем за собой..."
    rm -f "$TEMP_FILE"
    echo "[TRAP] Временный файл $TEMP_FILE удален."
    exit 0
}
trap cleanup EXIT INT
echo "[TRAP] Скрипт начал работу. Создан файл $TEMP_FILE"
sleep 1
echo "[TRAP] Работа завершена успешно."
