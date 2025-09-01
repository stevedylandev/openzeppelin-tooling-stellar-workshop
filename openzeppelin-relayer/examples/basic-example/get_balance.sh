#!/usr/bin/env bash

curl -X GET http://localhost:8080/api/v1/relayers/stellar-example/balance \
  -H "Content-Type: application/json" \
  -H "AUTHORIZATION: Bearer " \
| jq .
