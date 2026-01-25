Project Overview
A shell script to monitor AWS resource usage for cost optimization in cloud infrastructure.

Why This Project is Important
Cost Management: Organizations move to cloud for cost-effectiveness (pay-as-you-go)

Resource Tracking: Prevent unused resources (EC2 instances, EBS volumes) from incurring costs

Reporting: Daily reports to management about resource utilization

Resources to Track
AWS S3 buckets

AWS EC2 instances

AWS Lambda functions

AWS IAM users

Script Components
1. Script Setup
bash
#!/bin/bash

# Author: Abhishek
# Date: 11th Jan
# Version: V1 (draft)
# Description: This script will report AWS resource usage
2. AWS CLI Commands Used
bash
# List S3 buckets
aws s3 ls

# List EC2 instances
aws ec2 describe-instances

# List Lambda functions  
aws lambda list-functions

# List IAM users
aws iam list-users
3. Enhanced Script with JQ and Formatting
bash
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
Key Concepts Covered
1. JQ for JSON Parsing
Used to extract specific information from AWS JSON output

Example: jq '.Reservations[].Instances[].InstanceId' extracts only instance IDs

2. Cron Jobs
Automate script execution at specific times (e.g., daily at 6 PM)

Eliminates manual execution dependency

3. AWS CLI Configuration
bash
aws configure
# Requires: Access Key, Secret Key, Default Region, Output Format (JSON)
4. Script Best Practices
Add comments for readability

Use set -x for debugging

Add descriptive echo statements

Consider redirecting output to files for reporting

Practical Applications
Cost Optimization: Identify unused resources

Compliance: Track resource creation patterns

Reporting: Integrate with dashboards or send reports to management

Automation: Schedule regular audits

Next Steps Suggested
Assignment: Write the script and integrate with crontab

Advanced Version: Add functions, error handling, and email reporting

Resume Project: This is a practical project that can be added to resumes

Prerequisites
AWS CLI installed and configured

Bash shell knowledge

Basic understanding of AWS services

This tutorial provides a practical, real-world DevOps automation script that addresses common cloud cost management challenges faced by organizations.

