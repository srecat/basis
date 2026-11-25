#!/bin/bash
# Админ часто проверяет список серверов
SERVERS="gate dmz lan"

echo "[FOR] Начинаем проверку серверов:"
for SERVER in $SERVERS; do
    echo " -> Проверяем узел: $SERVER"
done

echo "[FOR] Считаем до 3:"
for ((i=1; i<=3; i++)); do
    echo "    Шаг номер $i"
done
