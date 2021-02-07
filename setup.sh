#!/bin/bash

stackName=infrastructure
stackFile=template.yml

echo "Running aws cloudformation script"

if ! aws cloudformation describe-stacks --stack-name $stackName > /dev/null 2>&1; then
   echo -e "\nStack does not exist, creating ..."
     aws cloudformation create-stack \
    --stack-name $stackName \
    --template-body file://$stackFile \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region=us-west-2
else
 echo -e "\nStack already exist, updating ..."
  aws cloudformation update-stack \
    --stack-name $stackName \
    --template-body file://$stackFile \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region=us-west-2
fi