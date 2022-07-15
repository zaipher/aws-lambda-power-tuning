#!/bin/bash
# config
BUCKET_NAME=cxss3pd01
STACK_NAME=sam-cxs

# package
sam package --s3-bucket $BUCKET_NAME --template-file scripts/deploy-sar-app.yml --output-template-file packaged-sar.yml

# deploy
sam deploy --template-file packaged-sar.yml --stack-name $STACK_NAME --capabilities CAPABILITY_AUTO_EXPAND CAPABILITY_IAM
