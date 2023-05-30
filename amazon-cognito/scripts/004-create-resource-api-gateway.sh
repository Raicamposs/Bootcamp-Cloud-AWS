#!/bin/bash

awslocal apigateway create-resource \
    --rest-api-id aw50nlqyuv \
    --parent-id 0rw7l1hgjn \
    --path-part items \
    --region us-east-1 \
    | tee logs/004-create-resource-api-gateway.log
 