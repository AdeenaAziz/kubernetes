#!/bin/bash

set -x  # Debug mode

echo "Print list of S3 buckets"
aws s3 ls

echo "Print list of EC2 instances"  
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print list of Lambda functions"
aws lambda list-functions

echo "Print list of IAM users"
aws iam list-users


#----------------------------
#notes
#JQ for JSON Parsing
#Used to extract specific information from AWS JSON output

#Example: jq '.Reservations[].Instances[].InstanceId' extracts only instance IDs
