 #!/bin/bash
 price=$(curl -X 'GET' \
  'https://api.coingecko.com/api/v3/coins/ethereum/market_chart?vs_currency=usd&days=0' \
  -H 'accept: application/json' | jq .prices | jq .[0] | jq .[1]) 
 echo "{\"text\": \"${price%\.*}\"}"
