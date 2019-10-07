#!/bin/bash
aws cloudformation create-stack --stack-name vpc --template-body file://vpc.yml
sleep 360
aws cloudformation create-stack --stack-name iam --template-body file://iam.yml --capabilities CAPABILITY_IAM
sleep 360
aws cloudformation create-stack --stack-name app-cluster --template-body file://app-cluster.yml
sleep 360
aws cloudformation create-stack --stack-name cluster --template-body file://cluster.yml
