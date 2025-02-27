Example of parameters in Codio organization in custom LLMs settings, api key take from your LLM.

|         | openai  | anthropic | gemini | deepinfra |
|---------|------------|--------|--------|-----------|
| name | custom openai | custom anthropic | custom gemini | custom deepinfra |
| provider | openai | anthropic | gemini | deepinfra |
| endpoint | https://api.openai.com | https://api.anthropic.com | https://generativelanguage.googleapis.com | https://api.deepinfra.com |
| api key |  |  |  |  |
| authentication | Header | Header | Query param | Header |
| auth template | Authorization: Bearer {{apikey}} | x-api-key: {{apikey}} | key={{apikey}} | Authorization: Bearer {{apikey}} |
| endpoint enviroment variable | OPENAI_CUSTOM_URL | ANTHROPIC_CUSTOM_URL | GEMINI_CUSTOM_URL | DEEPINFRA_CUSTOM_URL |
| api key enviroment variable | OPENAI_CUSTOM_KEY | ANTHROPIC_CUSTOM_KEY | GEMINI_CUSTOM_KEY | DEEPINFRA_CUSTOM_KEY |
| subpath in url | /v1/chat/completions | /v1/messages | /v1beta/models/gemini-2.0-flash:generateContent | /v1/inference/meta-llama/Meta-Llama-3-8B-Instruct |