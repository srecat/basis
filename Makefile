.PHONY: lab01 clean

lab01:
	@echo "=== Running Lab 01: Shell Basics ==="
	@bash labs/01-shell-basics/run.sh | tee labs/01-shell-basics/expected/output.txt

clean:
	@rm -f labs/01-shell-basics/expected/output.txt
