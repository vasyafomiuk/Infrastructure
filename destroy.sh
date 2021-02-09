#!/bin/sh

stackName=infrastructure

echo "Running aws delete-stack script"

aws cloudformation delete-stack --stack-name $stackName