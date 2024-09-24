# Cheatsheet AWS Certification exams
This repo is intended to help in training for the following AWS Certifications:
- AWS Certified Developer associate
- AWS Certified DevOps Engineer Professional

## IAM

### RBAC

### ABAC
Attribute-based access control: Authorization strategy that defines access based on attributes / tags.
Add tags to resources ( services, IAM )

### SCP ( Service Control Policies )

SCP specifies authorization level to services.
SCP do not grant permissions, It sets the authorization limit for IAM entities in an organization.

### ACL ( Access Contron List )
ACL controls the access of principals from other accounts. It doesn't control Its own account.

## CloudTrail
Track and record every API call to AWS accounts, such as: SDK call, rest api, and so on.

### Cloudtrail Log file integrity
Guarantee that the log trail was not changed or modified by implementing a hash in every log file delivered by Cloudtrail.

### Trusted advisor
Inspect AWS infrastructure for evaluating several parameters. 
Cost advisor flag check EC2 utilization and I/O processing in EBS volumen in order to report low utilization.
It create events that can be catched using Cloudwatch event.

## EC2


### User Data
Script to be execute during EC2 creation.
For example installing node.js -->

```bash
#! /bin/bash
#
sudo yum update -y
#
sudo yum install gcc-c++ make -y
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -
sudo yum install nodejs -y
#
node -v
#
```

### SSH connection to EC2 instance
```bash
ssh -i my-priv-key.pem ec2-user@my-ec2.ip.address
```

## Cloudwatch

### Cloudwatch metric stream
Deliver metrics in near to real-time to a destination.
*** Note: Cloudwatch metrics data expires after 15 months, being replaced by new data.

### Creating Cloudwatch EC2's log event

## AWS Config
Fully managed services that provides control over resource inventory, configuration history and configuration changes notification

## System Manager Parameter Store

## OpsWorks
Manage infrastructure, config and application. Migration of Chef open source to the cloud -> OpsWorks.

### OpsWorks Stack
It works with three layers: load balancing layer, application layer and RDS ( database ) layer.
There are three options to manage instance: 24/7; time-based; load-based.

### OpsWorks Stacks Lifecycle events
There are five events: setup, configure, deploy, undeploy, shutdown



## CI/CD on AWS

Continuous Integration or CI is a methodology to automatically intetegrate code repository to test and build process


### CodeCommit
    - Version control and collaborative code repository
    - Git system
    - Easy integration with third party build systems, such as CodeBuild, Jenkins, others
    - No storage limits. Autoscale and high available
    - IAM roles per repository
    - Repositories encrypted by default at rest using AWS KMS

#### Repositories replication
    Replication is a solution for improving latency in pulls.
    The solution is:
    Region-1 --> EventBridge --> ECS Tasks --> git remote set-url --push origin --> Region-2

#### Security
    - A user who has push access can push to any branch by default
    - IAM can be used to limit access to individual branches

### CodePipeline
### CodeBuild
### CodeDeploy
### CodeStar
### CodeArtifact
### CodeGuru

## Projects
This section provides insight to mini-projects that helps to learn AWS by developing small projects

### Lambda receive image, convert to thumbail and storage It in a EFS located in another account

### Deploy javascript API from S3, through Cloudfront to API gateway

### 