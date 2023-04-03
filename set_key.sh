#!/bin/bash

key=$1
touch ./src/gpt-test/config.py
echo "gpt_api_key = \"$key\"" > ./src/gpt-test/config.py
