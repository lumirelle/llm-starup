#!/usr/bin/env sh
# Qwen3.8-27B UD-Q3_K_XL (13.1 GB) — 16 GB profile.
# + 32K ctx with q8_0 KV (~1.1 GB) + buffers ≈ 15 GB.
exec llama-server \
  -hf unsloth/Qwen3.8-27B-GGUF:UD-Q3_K_XL \
  --alias qwen3.8-27b \
  --host 0.0.0.0 \
  --port 10000 \
  -c 32768 \
  -ngl 99 \
  -fa on \
  -ctk q8_0 -ctv q8_0 \
  --temp 1.0 \
  --top-p 0.95 \
  --top-k 20 \
  --min-p 0
