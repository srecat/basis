#!/bin/bash
VERBOSE=false
HELP=false
while getopts "vh" opt; do
    case $opt in
        v) VERBOSE=true ;;
        h) HELP=true ;;
        \?) echo "Неверный флаг: -$OPTARG" >&2; exit 1 ;;
    esac
done
if [ "$HELP" = true ]; then
    echo "Использование: $0 [-v] [-h]"
    exit 0
fi
if [ "$VERBOSE" = true ]; then
    echo "[GETOPTS] Включен подробный режим (флаг -v был передан)"
else
    echo "[GETOPTS] Обычный режим (флаг -v не передан)"
fi
