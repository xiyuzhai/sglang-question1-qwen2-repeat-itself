# Use the official NVIDIA CUDA runtime image for Ubuntu 22.04
FROM nvidia/cuda:12.6.0-runtime-ubuntu22.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Install Python, git, git-lfs and required packages
RUN apt-get update && \
    apt-get install -y python3 python3-venv python3-pip git git-lfs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy application files
COPY . .

# Setup git-lfs and clone model
RUN git lfs install && \
    mkdir -p /root/.llms/models && \
    git clone https://huggingface.co/Qwen/Qwen2-7B-Instruct /root/.llms/models/Qwen2-7B-Instruct

# Create virtual environment and install dependencies
RUN python3 -m venv .venv && \
    . .venv/bin/activate && \
    chmod +x setup.sh && \
    ./setup.sh

# Run the script
CMD ["/bin/bash", "-c", "source .venv/bin/activate && python3 offline_engine_qwen2_7b_instruct_sync.py"]
