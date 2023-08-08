# Cheatsheet AWS Certification exams
This repo is intended to help in training for the following AWS Certifications:
- AWS Certified Developer associate
- AWS Certified DevOps Engineer Professional

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

### CodePipeline
### CodeBuild
### CodeDeploy
### CodeStar
### CodeArtifact
### CodeGuru

