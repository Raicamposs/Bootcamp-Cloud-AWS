#!/bin/bash

awslocal apigateway get-resources --rest-api-id aw50nlqyuv \
    | tee logs/003-get-resources-api-gateway.log        