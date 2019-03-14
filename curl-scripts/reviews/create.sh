#!/bin/bash

curl "http://localhost:4741/reviews" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "review": {
      "video_game": "'"${VIDEO_GAME}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo
