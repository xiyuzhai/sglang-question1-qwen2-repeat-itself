# sglang-question1-qwen2-7b-instruct-repeat-itself

## Environment

Platform: Ubuntu 24.04.1 LTS

Python version: 3.12.3

Model: Qwen2-7B-Instruct, downloaded by

```bash
pkgx huggingface-cli download Alibaba-NLP/gte-Qwen2-7B-instruct
```

where pkgx is installed
```bash
curl -Ssf https://pkgx.sh | sh
```


## Steps to reproduce

```bash
# create a virtual environment
make create-venv
# install dependencies
make setup
# run the script
make run
```

## Output

The output repeats itself:

```bash
===============================
Prompt: Hello, my name is
Generated text: Hello, my name is
我的名字叫什么
名字叫什么
名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫什么名字叫
===============================
Prompt: The president of the United States is
Generated text:  president of the United States is president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of the United States president of
===============================
Prompt: The capital of France is
Generated text:  capital of France is Paris.

 capital of France is Paris.

 capital of France is Paris. capital of France is Paris.

 capital of France is Paris. capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France is Paris capital of France
===============================
Prompt: The future of AI is
Generated text:  future AI is AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来AI未来AI未来AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI未来 AI
===============================
Prompt: Solve the following equation: 2x + 3 = 7
Generated text:  equation: equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation equation
```
