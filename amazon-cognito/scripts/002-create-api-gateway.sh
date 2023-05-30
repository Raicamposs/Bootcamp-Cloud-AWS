#!/bin/bash

awslocal apigateway create-rest-api --name 'API DIO' \
    --region us-east-1 \
    | tee logs/002-create-api-gateway.log     