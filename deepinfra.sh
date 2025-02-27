#!/bin/bash

SUB_PATH=/v1/inference/meta-llama/Meta-Llama-3-8B-Instruct
LLM_URL=$DEEPINFRA_CUSTOM_URL$SUB_PATH

curl -X POST $LLM_URL -H "Authorization: Bearer $DEEPINFRA_CUSTOM_KEY" -H "Content-Type: application/json" -d '{"input": "<|begin_of_text|><|start_header_id|>user<|end_header_id|>\n\n\"'"$CODIO_FREE_TEXT_ANSWER"'\"<|eot_id|><|start_header_id|>assistant<|end_header_id|>\n\n","stop": ["<|eot_id|>"],"stream": false}'
