.PHONY: lab01 clean

lab01:
	@echo "=== Running Lab 01: Shell Basics ==="
	@bash labs/01-shell-basics/run.sh | tee labs/01-shell-basics/expected/output.txt

clean:
	@rm -f labs/01-shell-basics/expected/output.txt

lab02:
	@echo "=== Running Lab 02: Control Flow ==="
	@bash labs/02-shell-control-flow/run.sh | tee labs/02-shell-control-flow/expected/output.txt
	@echo "✅ Done."

lab03:
	@echo "=== Running Lab 03: Advanced Bash ==="
	@bash labs/03-shell-advanced/run.sh | tee labs/03-shell-advanced/expected/output.txt
	@echo "✅ Done."

lab04:
	@echo "=== Running Lab 04: Shell Capstone ==="
	@bash labs/04-shell-capstone/tests/run-tests.sh
	@echo "✅ Done."