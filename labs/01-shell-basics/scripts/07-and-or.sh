#!/bin/bash
TEST_FILE="/tmp/lab01_test_dir/logic.txt"
[ -f "$TEST_FILE" ] || touch "$TEST_FILE"
echo "Файл создан через ||"
[ -f "$TEST_FILE" ] && rm "$TEST_FILE"
echo "Файл удален через &&"
