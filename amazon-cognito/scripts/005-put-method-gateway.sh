#!/bin/bash

awslocal apigateway put-method \
    --rest-api-id aw50nlqyuv \
    --resource-id s5ohfn29fb \
    --http-method POST \
    --authorization-type "NONE" \
    | tee logs/005-put-method-gateway.log
