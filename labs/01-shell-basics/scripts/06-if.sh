#!/bin/bash
TEST_DIR="/tmp/lab01_test_dir"
mkdir -p "$TEST_DIR"
if [ -d "$TEST_DIR" ]; then
    echo "Директория $TEST_DIR существует"
else
    echo "Ошибка: директории нет"
    exit 1
fi
