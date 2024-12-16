create-venv:
	python3.12 -m venv .venv

setup:
	./setup.sh

debug:
	.venv/bin/python3.12 debug.py

run:
	.venv/bin/python3.12 offline_engine_qwen2_7b_instruct_sync.py
