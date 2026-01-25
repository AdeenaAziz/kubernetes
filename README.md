This is a comprehensive DevOps project about creating a shell script to track AWS resource usage. Let me summarize the key points:

_Project Overview:_
A shell script to monitor AWS resource usage for cost optimization in cloud infrastructure.

_Why This Project is Important_
1. Cost Management: Organizations move to cloud for cost-effectiveness (pay-as-you-go)
2. Resource Tracking: Prevent unused resources (EC2 instances, EBS volumes) from incurring costs
3. Reporting: Daily reports to management about resource utilization

_Resources to Track_
1. AWS S3 buckets
2. AWS EC2 instances
3. AWS Lambda functions
4. AWS IAM users
--------------------------------------   
_Add Cron Job Entry_
How to setup Cron jobs?
To setup a cronjob, you use a command called crontab. If you execute crontab -l you will see a list of currently installed cron jobs. Jobs are defined in a text file using crontab syntax that you can find or generate at https://crontab-generator.org/. Each line is a job that will be executed. To add/modify/delete a job run crontab -e and perform the deed.

syntax:
* * * * * command_to_execute
- - - - -
<img width="386" height="194" alt="image" src="https://github.com/user-attachments/assets/72a90afe-a2b6-4db7-af06-b77aee10aa29" />


Examples:
a) Run daily at 6 PM:
command:
0 18 * * * /home/ubuntu/aws_resource_tracker.sh
