#!/bin/bash

awslocal lambda create-function \
    --function-name bootcamp-dio-put-items \
    --runtime nodejs18.x \
    --zip-file fileb://function.zip \
    --handler lambda.handler \
    --region us-east-1 \
    --role arn:aws:iam::000000000000:role/lambda-role \
    | tee logs/006-create-lambda.log