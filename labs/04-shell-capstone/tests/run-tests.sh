#!/bin/bash
set -euo pipefail

echo "=== Testing check_disk.sh ==="

# Создаем фейковую команду df, чтобы не забивать реальный диск
mkdir -p mock_bin
cat << 'INNER_EOF' > mock_bin/df
#!/bin/bash
# Этот фейковый df всегда будет показывать 85% занятости
echo "Filesystem     1024-blocks     Used Available Capacity Mounted on"
echo "/dev/fake       10000000  8500000   1500000      85% /"
INNER_EOF

chmod +x mock_bin/df
export PATH="$(pwd)/mock_bin:$PATH"

# Запускаем скрипт с подмененным PATH
set +e # Отключаем выход при ошибке, так как скрипт специально вернет exit 1
OUTPUT=$(bash labs/04-shell-capstone/check_disk.sh)
EXIT_CODE=$?
set -e

# Проверяем результат
if [ "$EXIT_CODE" -eq 1 ]; then
    echo "✅ Test passed: Script returned exit code 1 (Alert triggered)"
else
    echo "❌ Test failed: Expected exit code 1, got $EXIT_CODE"
    exit 1
fi

# Очистка
rm -rf mock_bin
rm -f /tmp/disk_alert.log
