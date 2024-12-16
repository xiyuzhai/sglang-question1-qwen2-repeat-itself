create-venv:
	python3.12 -m venv .venv

setup:
	./setup.sh

debug:
	.venv/bin/python3.12 debug.py

run:
	.venv/bin/python3 offline_engine_qwen2_7b_instruct_sync.py

# Docker commands
docker-build:
	docker build -t sglang_question1_qwen2_7b_instruct_repeat_itself .

docker-run:
	docker run sglang_question1_qwen2_7b_instruct_repeat_itself

# Optional: Combined docker build and run
docker-all: docker-build docker-run

CONTAINER_NAME = sglang_question1_qwen2_7b_instruct_repeat_itself

docker-logs:
	docker logs $$(docker ps -a | grep $(CONTAINER_NAME) | head -n 1 | cut -d' ' -f1)

docker-inspect:
	docker inspect $$(docker ps -a | grep $(CONTAINER_NAME) | head -n 1 | cut -d' ' -f1)

docker-status:
	docker ps -a | grep $(CONTAINER_NAME) | head -n 1
