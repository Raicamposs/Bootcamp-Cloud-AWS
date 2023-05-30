#!/bin/bash

awslocal cognito-idp create-user-pool --pool-name test \
  --region us-east-1 \
  | tee logs/010-cognito-create-user-pool.log