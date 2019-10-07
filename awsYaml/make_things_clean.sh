#!/bin/bash
aws cloudformation delete-stack --stack-name cluster
sleep 30
echo "- CLUSTER"
aws cloudformation delete-stack --stack-name app-cluster
sleep 30
echo "- APP-cluster"
aws cloudformation delete-stack --stack-name iam
sleep 30
echo "- IAM"
aws cloudformation delete-stack --stack-name vpc
sleep 30
echo "- VPC"
