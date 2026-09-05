llama-server -hf unsloth/Qwen3.8-27B-GGUF:UD-IQ3_S \
  --host 0.0.0.0 \
  --port 10000 \
  -c 32768 \
  -ngl 99 \
  -fa on \
  -ctk q8_0 -ctv q8_0 \
  --temp 0.7 \
  --top-k 20 \
  --top-p 0.8
