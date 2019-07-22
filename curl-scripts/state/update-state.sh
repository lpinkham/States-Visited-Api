å#!/bin/bash

curl "http://localhost:4741/states/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "state": {
      "state_name": "'"${NAME}"'",
      "date_visited": "'"${DATE}"'",
      "highlight": "'"${HIGHLIGHT}"'",
      "revisit": "'"${REVISIT}"'"
    }
  }'

echo
