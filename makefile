create-venv:
	python3 -m venv .venv

setup:
	./setup.sh

run:
	.venv/bin/python3 offline_engine_qwen2_7b_instruct_sync.py