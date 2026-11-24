#!/bin/bash
set -euo pipefail
echo "======================================"
echo " Starting Lab 01: Shell Basics       "
echo "======================================"
chmod +x ./scripts/*.sh
for script in ./scripts/*.sh; do
    echo -e "\n--- Running: $script ---"
    bash "$script"
done
echo -e "\n✅ All Lab 01 scripts executed successfully."
