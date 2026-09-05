# LLM

Local LLM setup scripts (with params), for personal usage.

Powered by llama.cpp.

## Params of llama.cpp

| Param | Accept & Default Value | Recommeded Value | Meanning |
| -- | -- | -- | -- |
| `-hf` | `{{model-name:model-version}}` | / | Fetch model directly from Hugging Face |
| `-c` | `0` (default, inherit from model default), `2048`, `4096`, `8192`, `16384` (16k), `32768` (32k), ... | `16384` / `32768` | Context length |
| `-ngl` | `-1` (auto) ~ `99` | `99` | Put how many model layers on GPU instead of CPU, the more layers on GPU, the better performance you get |
| `-fa` | `auto` (default) / `on` / `off` | `on` | Whether or not to enable Flash Attention, which can save video memory |
| `--temp` | `0` ~ `1`, default to `0.8` | `0.7` for most cases, `0.8` for writting | Model temperature (creativity) |
| `--top-k` | >= `0` (all words), default to `40` | `40` for most cases, `60` for writting | Pick top K words, the smaller, the stricter |
| `--top-p` | `0` ~ `1` (all words), default to `0.95` | `0.9` for most cases, `0.95` for writting |  Pick words with cumulative probability reaching P, the smaller, the stricter |
| `--repeat-penalty` | >= `1`, default to `1` (no punishment) | `1.1` | Punishment in case of repetition | 

