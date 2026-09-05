llama-server -hf unsloth/Qwen3.5-9B-GGUF:Q4_K_M \
  --host 0.0.0.0 \
  --port 10000 \
  -c 16384 \
  -ngl 99 \
  -fa on \
  -ctk q8_0 -ctv q8_0 \
  --temp 0.7 \
  --top-k 20 \
  --top-p 0.8
