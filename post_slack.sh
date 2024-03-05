#!/bin/bash


post() {
  local  webhook_url=$POST_SLACK_WEBHOOK_URL
  if [ -z "$webhook_url" ]; then
    echo "environment variable POST_SLACK_WEBHOOK_URL is not set"
    exit 1
  fi

  local message=$(cat -)
  curl -s -X POST \
    -H 'Content-type: application/json' \
    --data "{'text': \"$message\"}" \
    $webhook_url > /dev/null 
}


if [ -p /dev/stdin ]; then
  cat -
else
  echo $1
fi | post
 

