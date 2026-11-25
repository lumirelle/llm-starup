# LLM

Local LLM setup scripts (with params), for personal usage.

Powered by llama.cpp.

## Tasks

| Task | Model | Quant | Weights | Target VRAM | At 32K ctx | Usage |
| -- | -- | -- | -- | -- | -- | -- |
| `basic` | `unsloth/Qwen3.8-27B-GGUF` | `UD-Q3_K_XL` | 13.1 GB | **16 GB** | ~15 GB | `mise run basic` |
| `lite` | `unsloth/Qwen3.5-9B-GGUF` | `UD-Q4_K_XL` | 6.0 GB | **8 GB** | ~7.2 GB | `mise run lite` |

`Target VRAM` is the card each task is sized for; `At 32K ctx` includes the
q8_0 KV cache and runtime buffers. Both models use hybrid attention (Qwen3.8:
16 of 64 layers full; Qwen3.5-9B: 8 of 32), so long context is unusually cheap.

> Sampling follows the official Qwen3.5/3.8 card for thinking mode:
> `--temp 1.0 --top-p 0.95 --top-k 20 --min-p 0`. Thinking is on by default;
> disable per request with `chat_template_kwargs: {"enable_thinking": false}`,
> or shorten it with `--reasoning-effort low|medium|high`.

## Params of llama.cpp

| Param | Accept & Default Value | Recommeded Value | Meanning |
| -- | -- | -- | -- |
| `-hf` | `{{model-name:model-version}}` | / | Fetch model directly from Hugging Face |
| `-c` | `0` (default, inherit from model default), `2048`, `4096`, `8192`, `16384` (16k), `32768` (32k), ... | `16384` / `32768` | Context length |
| `-ngl` | `-1` (auto) ~ `99` | `99` | Put how many model layers on GPU instead of CPU, the more layers on GPU, the better performance you get |
| `-fa` | `auto` (default) / `on` / `off` | `on` | Whether or not to enable Flash Attention, which can save video memory |
| `-ctk` & `-ctv` | `f16` / `q8_0` / `q4_0` / `q4_1` | `q8_0` | KV cache accuracy |
| `--temp` | `0` ~ `1`, default to `0.8` | `0.7` for most cases, `0.8` for writting | Model temperature (creativity) |
| `--top-k` | >= `0` (all words), default to `40` | `40` for most cases, `60` for writting | Pick top K words, the smaller, the stricter |
| `--top-p` | `0` ~ `1` (all words), default to `0.95` | `0.9` for most cases, `0.95` for writting |  Pick words with cumulative probability reaching P, the smaller, the stricter |
| `--repeat-penalty` | >= `1`, default to `1` (no punishment) | `1` for most cases | Punishment in case of repetition | 

