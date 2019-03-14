#!/bin/bash

curl "http://localhost:4741/book/${ID}" \
  --include \
  --request DELETE \

echo
