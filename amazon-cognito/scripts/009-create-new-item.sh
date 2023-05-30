#!/bin/bash

curl  POST http://aw50nlqyuv.execute-api.localhost.localstack.cloud:4566/test/items \
   -H "Content-Type: application/json" \
   -d '{"Id": "9992e300-c5d4-4f06-9173-51370f1895bd", "price": 3}'  