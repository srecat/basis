#!/bin/bash
set -euo pipefail
echo "======================================"
echo " Starting Lab 02: Control Flow        "
echo "======================================"
chmod +x ./scripts/*.sh
for script in ./scripts/*.sh; do
    echo -e "\n--- Running: $script ---"
    bash "$script"
done
echo -e "\n✅ All Lab 02 scripts executed successfully."
