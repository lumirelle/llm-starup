#!/usr/bin/env sh
# Qwen3.5-9B UD-Q4_K_XL (6.0 GB) — 8 GB profile.
# + 32K ctx with q8_0 KV (~0.6 GB) + buffers ≈ 7.2 GB.
exec llama-server \
  -hf unsloth/Qwen3.5-9B-GGUF:UD-Q4_K_XL \
  --alias qwen3.5-9b \
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
