#!/bin/bash

curl "http://localhost:4741/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
