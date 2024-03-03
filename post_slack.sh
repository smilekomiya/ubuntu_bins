#!/bin/bash

webhook_url=$POST_SLACK_WEBHOOK_URL
if [ -z "$webhook_url" ]; then
  echo "environment variable POST_SLACK_WEBHOOK_UR is not set"
  eixt 1
fi

 
