#!/bin/bash
# Представь, что это пульт управления сервисом
ACTION="start"

case "$ACTION" in
    "start")
        echo "[CASE] Запускаем сервис..."
        ;;
    "stop")
        echo "[CASE] Останавливаем сервис..."
        ;;
    "restart")
        echo "[CASE] Перезапускаем сервис..."
        ;;
    *)
        echo "[CASE] Ошибка: Неизвестная команда $ACTION"
        ;;
esac
