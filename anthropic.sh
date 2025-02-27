#!/bin/bash

SUB_PATH=/v1/messages
LLM_URL=$ANTHROPIC_CUSTOM_URL$SUB_PATH

curl -X POST $LLM_URL -H "x-api-key: $ANTHROPIC_CUSTOM_KEY" -H "Content-Type: application/json" -H "anthropic-version: 2023-06-01" -d '{"max_tokens": 500, "model": "claude-3-5-sonnet-20240620", "messages": [ { "role": "user", "content": "'"$CODIO_FREE_TEXT_ANSWER"'" } ] }'
