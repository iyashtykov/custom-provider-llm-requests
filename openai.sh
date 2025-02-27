#!/bin/bash

SUB_PATH=/v1/chat/completions
LLM_URL=$OPENAI_CUSTOM_URL$SUB_PATH

curl -X POST $LLM_URL -H "Authorization: Bearer $OPENAI_CUSTOM_KEY" -H "Content-Type: application/json" -d '{"model": "gpt-3.5-turbo", "messages": [{"role": "system", "content": "'"$CODIO_FREE_TEXT_ANSWER"'" }]}'