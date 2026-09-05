llama-server -hf Qwen/Qwen2.5-7B-Instruct-GGUF:Q4_K_M \
  --host 0.0.0.0 \
  --port 10000 \
  -ngl 99 \
  -fa on \
  -c 32768 \
  --temp 0.7 \
  --top-k 40 \
  --top-p 0.9 \
  --repeat-penalty 1.1
