#! /bin/bash

source .venv/bin/activate
pip install --upgrade pip
pip install torch torchvision torchaudio
pip install "sglang[all]" --find-links https://flashinfer.ai/whl/cu124/torch2.4/flashinfer/