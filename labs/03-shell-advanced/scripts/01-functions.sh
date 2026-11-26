#!/bin/bash
check_service() {
    local SERVICE_NAME="$1" 
    echo "[FUNCTION] Проверяем статус сервиса: $SERVICE_NAME"
    if systemctl is-active --quiet "$SERVICE_NAME"; then
        echo "   ✅ Сервис $SERVICE_NAME работает."
    else
        echo "   ❌ Сервис $SERVICE_NAME ОСТАНОВЛЕН."
    fi
}
check_service "ssh"
check_service "cron"
