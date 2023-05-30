#!/bin/bash

awslocal apigateway put-integration \
  --rest-api-id aw50nlqyuv \
  --resource-id s5ohfn29fb \
  --http-method POST   \
  --type AWS_PROXY \
  --integration-http-method POST \
  --uri arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:000000000000:function:bootcamp-dio-put-items/invocations \
  --passthrough-behavior WHEN_NO_MATCH  \
  | tee logs/007-put-integration-api-gateway.log
