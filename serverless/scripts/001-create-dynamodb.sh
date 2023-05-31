#!/bin/bash

awslocal dynamodb create-table \
    --cli-input-json file://scripts/create-table-items.json \
    --region us-east-1 \
    | tee logs/001-create-dynamodb.log

