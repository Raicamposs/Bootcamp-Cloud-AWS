#!/bin/bash

awslocal dynamodb list-tables --region us-east-1 \
    | tee logs/002-list-tables.log