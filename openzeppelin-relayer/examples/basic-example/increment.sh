#!/usr/bin/env bash

curl --location --request POST 'http://localhost:8080/api/v1/relayers/stellar-example/transactions' \
--header 'Authorization: Bearer ' \
--header 'Content-Type: application/json' \
--data-raw '{
  "network": "testnet",
  "operations": [
    {
      "type": "invoke_contract",
      "contract_address": "CAZOV6PSU6XHRSQPZBTNUD6TP5RLJWVYIADLD4RAXPI7WDETACLAMNWM",
      "function_name": "increment",
      "args": [],
      "auth": {"type": "source_account"}
    }
  ]
}' \
| jq .
