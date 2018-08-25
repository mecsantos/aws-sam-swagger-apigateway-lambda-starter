#!/bin/sh

# IMPORTANT: Bucket names must be unique for all AWS users.
BUCKET="pet-store-api-deployment-workspace-UNIQUE_NAME"

# Delete CloudFormation Stack
aws cloudformation delete-stack \
    --stack-name pet-store-stack

# Delete non-empty bucket
aws s3 rb s3://$BUCKET --force
