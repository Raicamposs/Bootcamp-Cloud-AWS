#!/bin/bash
 
# awslocal dynamodb delete-table --table-name items

awslocal dynamodb create-table \
    --cli-input-json file://scripts/create-table-items.json \
    --region us-east-1 \
    | tee logs/001-create-dynamodb.log


awslocal dynamodb list-tables --region us-east-1 \
    | tee logs/dynamodb-list-tables.log


awslocal dynamodb describe-table --table-name items --query 'Table.ItemCount' --region us-east-1 \
    | tee logs/dynamodb-item-count.log

    
awslocal dynamodb execute-statement \
        --statement "SELECT * FROM items" \
        --region us-east-1 \
    | tee logs/dynamodb-list-items.log

