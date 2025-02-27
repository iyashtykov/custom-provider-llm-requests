#!/bin/bash

SUB_PATH=/v1beta/models/gemini-2.0-flash:generateContent
LLM_URL=$GEMINI_CUSTOM_URL$SUB_PATH?key=$GEMINI_CUSTOM_KEY

curl -X POST $LLM_URL  -H "Content-Type: application/json" -d '{"contents": [{"parts":[{"text": "'"$CODIO_FREE_TEXT_ANSWER"'"}]}]}'
