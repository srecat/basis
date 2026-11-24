#!/bin/bash
PERM=2
echo "2 * 2 = $(( 2 * 2 ))"
echo "2 * PERM = $(( 2 * $PERM ))"
echo "Сложное выражение: $(( ((2*3+5)-4)/2 ))"
PERM="test"
echo "Если PERM=test, то 2*PERM = $(( 2 * $PERM )) (будет 0)"
