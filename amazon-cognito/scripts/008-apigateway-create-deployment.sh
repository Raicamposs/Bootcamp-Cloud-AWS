#!/bin/bash

awslocal apigateway create-deployment \
  --rest-api-id aw50nlqyuv \
  --stage-name test \
  --region us-east-1 \
  | tee logs/008-apigateway-create-deployment.log