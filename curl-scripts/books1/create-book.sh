#!/bin/bash

curl "http://localhost:4741/books" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
