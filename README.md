# AWS Solution Architect

This repository contains Terraform configurations for various AWS services. These configurations are designed to help AWS solution architects quickly set up and manage AWS infrastructure using Terraform. Services covered include EC2, S3, RDS, VPC, and more.

## Getting Started

To get started with these Terraform configurations, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/alilotfi23/aws-solution-architect.git
   ```

2. **Navigate to the desired directory:**
   ```bash
   cd aws-solution-architect/terraform-aws-ec2
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Run terraform plan:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```


## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials configured on your local machine. You can set this up using the AWS CLI:
  ```bash
  aws configure
  ```

## File Structure

```plaintext
.
├── folder_structure.txt         # File structure description
├── LICENSE                      # License file
├── README.md                    # README file
├── terraform-aws-alb            # Application Load Balancer configuration
│   ├── main.tf                  # Main Terraform configuration for ALB
│   ├── modules                  # Modules directory for ALB
│   │   └── alb
│   │       ├── main.tf          # ALB module main configuration
│   │       └── versions.tf      # Version constraints for ALB module
│   ├── outputs.tf               # Outputs for ALB
│   ├── variables.tf             # Variables for ALB
│   └── versions.tf              # Version constraints for ALB
├── terraform-aws-ami            # AMI configuration
│   ├── main.tf                  # Main Terraform configuration for AMI
│   ├── modules                  # Modules directory for AMI
│   │   └── ami
│   │       ├── main.tf          # AMI module main configuration
│   │       ├── outputs.tf       # Outputs for AMI module
│   │       ├── provider.tf      # Provider configuration for AMI module
│   │       └── variables.tf     # Variables for AMI module
│   ├── outputs.tf               # Outputs for AMI
│   ├── provider.tf              # Provider configuration for AMI
│   └── variables.tf             # Variables for AMI
├── terraform-aws-amplify        # Amplify configuration
│   ├── amplify
│   │   ├── amplify.tf           # Main configuration for Amplify
│   │   ├── outputs.tf           # Outputs for Amplify
│   │   └── variables.tf         # Variables for Amplify
│   ├── main.tf                  # Main Terraform configuration for Amplify
│   ├── modules                  # Modules directory for Amplify
│   │   └── amplify_app
│   │       ├── main.tf          # Amplify App module main configuration
│   │       ├── outputs.tf       # Outputs for Amplify App module
│   │       └── variables.tf     # Variables for Amplify App module
│   ├── outputs.tf               # Outputs for Amplify
│   ├── terraform.tfvars         # Terraform variables for Amplify
│   └── variables.tf             # Variables for Amplify
├── terraform-aws-api            # API configuration
│   ├── main.tf                  # Main Terraform configuration for API
│   ├── outputs.tf               # Outputs for API
│   ├── terraform.tfvars         # Terraform variables for API
│   ├── variables.tf             # Variables for API
│   └── versions.tf              # Version constraints for API
├── terraform-aws-api_gateway    # API Gateway configuration
│   ├── api_gateway
│   │   ├── api_gateway.tf       # Main configuration for API Gateway
│   │   ├── outputs.tf           # Outputs for API Gateway
│   │   └── variables.tf         # Variables for API Gateway
│   ├── main.tf                  # Main Terraform configuration for API Gateway
│   ├── modules                  # Modules directory for API Gateway
│   │   └── api_gateway
│   │       ├── main.tf          # API Gateway module main configuration
│   │       ├── outputs.tf       # Outputs for API Gateway module
│   │       └── variables.tf     # Variables for API Gateway module
│   ├── outputs.tf               # Outputs for API Gateway
│   ├── terraform.tfvars         # Terraform variables for API Gateway
│   └── variables.tf             # Variables for API Gateway
├── terraform-aws-asg            # Auto Scaling Group configuration
│   ├── main.tf                  # Main Terraform configuration for ASG
│   ├── modules                  # Modules directory for ASG
│   │   └── asg
│   │       ├── main.tf          # ASG module main configuration
│   │       ├── outputs.tf       # Outputs for ASG module
│   │       └── variables.tf     # Variables for ASG module
│   ├── outputs.tf               # Outputs for ASG
│   ├── provider.tf              # Provider configuration for ASG
│   └── variables.tf             # Variables for ASG
├── terraform-aws-athena         # Athena configuration
│   ├── athena
│   │   ├── athena.tf            # Main configuration for Athena
│   │   ├── outputs.tf           # Outputs for Athena
│   │   └── variables.tf         # Variables for Athena
│   ├── main.tf                  # Main Terraform configuration for Athena
│   ├── modules                  # Modules directory for Athena
│   │   └── athena_workgroup
│   │       ├── main.tf          # Athena Workgroup module main configuration
│   │       ├── outputs.tf       # Outputs for Athena Workgroup module
│   │       └── variables.tf     # Variables for Athena Workgroup module
│   ├── outputs.tf               # Outputs for Athena
│   ├── terraform.tfvars         # Terraform variables for Athena
│   └── variables.tf             # Variables for Athena
├── terraform-aws-aurora         # Aurora configuration
│   ├── aurora
│   │   ├── aurora.tf            # Main configuration for Aurora
│   │   ├── outputs.tf           # Outputs for Aurora
│   │   └── variables.tf         # Variables for Aurora
│   ├── main.tf                  # Main Terraform configuration for Aurora
│   ├── modules                  # Modules directory for Aurora
│   │   └── aurora_cluster
│   │       ├── main.tf          # Aurora Cluster module main configuration
│   │       ├── outputs.tf       # Outputs for Aurora Cluster module
│   │       └── variables.tf     # Variables for Aurora Cluster module
│   ├── outputs.tf               # Outputs for Aurora
│   ├── terraform.tfvars         # Terraform variables for Aurora
│   └── variables.tf             # Variables for Aurora
├── terraform-aws-cloudfront     # CloudFront configuration
│   ├── cloudfront.tf            # Main configuration for CloudFront
│   ├── iam.tf                   # IAM configuration for CloudFront
│   ├── main.tf                  # Main Terraform configuration for CloudFront
│   ├── outputs.tf               # Outputs for CloudFront
│   ├── provider.tf              # Provider configuration for CloudFront
│   ├── s3.tf                    # S3 configuration for CloudFront
│   └── variables.tf             # Variables for CloudFront
├── terraform-aws-cognito        # Cognito configuration
│   ├── cognito
│   │   ├── cognito.tf           # Main configuration for Cognito
│   │   ├── outputs.tf           # Outputs for Cognito
│   │   └── variables.tf         # Variables for Cognito
│   ├── main.tf                  # Main Terraform configuration for Cognito
│   ├── modules                  # Modules directory for Cognito
│   │   └── cognito
│   │       ├── main.tf          # Cognito module main configuration
│   │       ├── outputs.tf       # Outputs for Cognito module
│   │       └── variables.tf     # Variables for Cognito module
│   ├── outputs.tf               # Outputs for Cognito
│   ├── terraform.tfvars         # Terraform variables for Cognito
│   └── variables.tf             # Variables for Cognito
├── terraform-aws-directory-svc  # Directory Service configuration
│   ├── directory_service
│   │   ├── directory_service.tf # Main configuration for Directory Service
│   │   ├── outputs.tf           # Outputs for Directory Service
│   │   └── variables.tf         # Variables for Directory Service
│   ├── main.tf                  # Main Terraform configuration for Directory Service
│   ├── modules                  # Modules directory for Directory Service
│   │   └── directory_service
│   │       ├── main.tf          # Directory Service module main configuration
│   │       ├── outputs.tf       # Outputs for Directory Service module
│   │       └── variables.tf     # Variables for Directory Service module
│   ├── outputs.tf               # Outputs for Directory Service
│   ├── terraform.tfvars         # Terraform variables for Directory Service
│   └── variables.tf             # Variables for Directory Service
├── terraform-aws-documentdb     # DocumentDB configuration
│   ├── documentdb
│   │   ├── documentdb.tf        # Main configuration for DocumentDB
│   │   ├── outputs.tf           # Outputs for DocumentDB
│   │   └── variables.tf         # Variables for DocumentDB
│   ├── main.tf                  # Main Terraform configuration for DocumentDB
│   ├── modules                  # Modules directory for DocumentDB
│   │   └── documentdb_cluster
│   │       ├── main.tf          # DocumentDB Cluster module main configuration
│   │       ├── outputs.tf       # Outputs for DocumentDB Cluster module
│   │       └── variables.tf     # Variables for DocumentDB Cluster module
│   ├── outputs.tf               # Outputs for DocumentDB
│   ├── terraform.tfvars         # Terraform variables for DocumentDB
│   └── variables.tf             # Variables for DocumentDB
├── terraform-aws-dynamodb       # DynamoDB configuration
│   ├── dynamodb
│   │   ├── dynamodb.tf          # Main configuration for DynamoDB
│   │   ├── outputs.tf           # Outputs for DynamoDB
│   │   └── variables.tf         # Variables for DynamoDB
│   ├── main.tf                  # Main Terraform configuration for DynamoDB
│   ├── modules                  # Modules directory for DynamoDB
│   │   └── dynamodb_table
│   │       ├── main.tf          # DynamoDB Table module main configuration
│   │       ├── outputs.tf       # Outputs for DynamoDB Table module
│   │       └── variables.tf     # Variables for DynamoDB Table module
│   ├── outputs.tf               # Outputs for DynamoDB
│   ├── terraform.tfvars         # Terraform variables for DynamoDB
│   └── variables.tf             # Variables for DynamoDB
├── terraform-aws-ebs            # EBS configuration
│   ├── ebs.tf                   # Main configuration for EBS
│   ├── ec2.tf                   # EC2 configuration for EBS
│   ├── main.tf                  # Main Terraform configuration for EBS
│   ├── outputs.tf               # Outputs for EBS
│   ├── provisioner.sh           # Provisioner script for EBS
│   ├── terraform.tfvars         # Terraform variables for EBS
│   ├── variables.tf             # Variables for EBS
│   └── vpc.tf                   # VPC configuration for EBS
├── terraform-aws-ec2            # EC2 configuration
│   ├── main.tf                  # Main Terraform configuration for EC2
│   ├── modules                  # Modules directory for EC2
│   │   ├── ec2_instance
│   │   │   ├── main.tf          # EC2 Instance module main configuration
│   │   │   ├── outputs.tf       # Outputs for EC2 Instance module
│   │   │   └── variables.tf     # Variables for EC2 Instance module
│   │   ├── security-group
│   │   │   ├── main.tf          # Security Group module main configuration
│   │   │   ├── outputs.tf       # Outputs for Security Group module
│   │   │   └── variables.tf     # Variables for Security Group module
│   │   ├── subnet
│   │   │   ├── main.tf          # Subnet module main configuration
│   │   │   ├── outputs.tf       # Outputs for Subnet module
│   │   │   └── variables.tf     # Variables for Subnet module
│   │   └── vpc
│   │       ├── main.tf          # VPC module main configuration
│   │       ├── outputs.tf       # Outputs for VPC module
│   │       └── variables.tf     # Variables for VPC module
│   ├── outputs.tf               # Outputs for EC2
│   ├── providers.tf             # Provider configuration for EC2
│   └── variables.tf             # Variables for EC2
├── terraform-aws-ecr            # ECR configuration
│   ├── ecr
│   │   ├── ecr.tf               # Main configuration for ECR
│   │   ├── outputs.tf           # Outputs for ECR
│   │   └── variables.tf         # Variables for ECR
│   ├── main.tf                  # Main Terraform configuration for ECR
│   ├── modules                  # Modules directory for ECR
│   │   └── ecr_repository
│   │       ├── main.tf          # ECR Repository module main configuration
│   │       ├── outputs.tf       # Outputs for ECR Repository module
│   │       └── variables.tf     # Variables for ECR Repository module
│   ├── outputs.tf               # Outputs for ECR
│   ├── terraform.tfvars         # Terraform variables for ECR
│   └── variables.tf             # Variables for ECR
├── terraform-aws-ecs            # ECS configuration
│   ├── ecs
│   │   ├── ecs.tf               # Main configuration for ECS
│   │   ├── outputs.tf           # Outputs for ECS
│   │   └── variables.tf         # Variables for ECS
│   ├── main.tf                  # Main Terraform configuration for ECS
│   ├── modules                  # Modules directory for ECS
│   │   └── ecs
│   │       ├── main.tf          # ECS module main configuration
│   │       ├── outputs.tf       # Outputs for ECS module
│   │       └── variables.tf     # Variables for ECS module
│   ├── outputs.tf               # Outputs for ECS
│   ├── terraform.tfvars         # Terraform variables for ECS
│   └── variables.tf             # Variables for ECS
├── terraform-aws-efs            # EFS configuration
│   ├── main.tf                  # Main Terraform configuration for EFS
│   ├── outputs.tf               # Outputs for EFS
│   ├── provider.tf              # Provider configuration for EFS
│   ├── terraform.tfvars         # Terraform variables for EFS
│   └── variables.tf             # Variables for EFS
├── terraform-aws-eks            # EKS configuration
│   ├── eks
│   │   ├── eks.tf               # Main configuration for EKS
│   │   ├── outputs.tf           # Outputs for EKS
│   │   └── variables.tf         # Variables for EKS
│   ├── main.tf                  # Main Terraform configuration for EKS
│   ├── modules                  # Modules directory for EKS
│   │   └── eks
│   │       ├── main.tf          # EKS module main configuration
│   │       ├── outputs.tf       # Outputs for EKS module
│   │       └── variables.tf     # Variables for EKS module
│   ├── outputs.tf               # Outputs for EKS
│   ├── terraform.tfvars         # Terraform variables for EKS
│   └── variables.tf             # Variables for EKS
├── terraform-aws-elb            # ELB configuration
│   ├── main.tf                  # Main Terraform configuration for ELB
│   ├── modules                  # Modules directory for ELB
│   │   ├── elb
│   │   │   ├── main.tf          # ELB module main configuration
│   │   │   ├── outputs.tf       # Outputs for ELB module
│   │   │   ├── variables.tf     # Variables for ELB module
│   │   │   └── versions.tf      # Version constraints for ELB module
│   │   └── elb_attachment
│   │       ├── main.tf          # ELB Attachment module main configuration
│   │       ├── outputs.tf       # Outputs for ELB Attachment module
│   │       ├── variables.tf     # Variables for ELB Attachment module
│   │       └── versions.tf      # Version constraints for ELB Attachment module
│   ├── outputs.tf               # Outputs for ELB
│   ├── variables.tf             # Variables for ELB
│   └── versions.tf              # Version constraints for ELB
├── terraform-aws-firewall-manager # Firewall Manager configuration
│   ├── firewall_manager
│   │   ├── firewall_manager.tf  # Main configuration for Firewall Manager
│   │   ├── outputs.tf           # Outputs for Firewall Manager
│   │   └── variables.tf         # Variables for Firewall Manager
│   ├── main.tf                  # Main Terraform configuration for Firewall Manager
│   ├── modules                  # Modules directory for Firewall Manager
│   │   └── firewall_manager
│   │       ├── main.tf          # Firewall Manager module main configuration
│   │       ├── outputs.tf       # Outputs for Firewall Manager module
│   │       └── variables.tf     # Variables for Firewall Manager module
│   ├── outputs.tf               # Outputs for Firewall Manager
│   ├── terraform.tfvars         # Terraform variables for Firewall Manager
│   └── variables.tf             # Variables for Firewall Manager
├── terraform-aws-global-accelerator # Global Accelerator configuration
│   ├── main.tf                  # Main Terraform configuration for Global Accelerator
│   ├── outputs.tf               # Outputs for Global Accelerator
│   ├── provider.tf              # Provider configuration for Global Accelerator
│   └── variables.tf             # Variables for Global Accelerator
├── terraform-aws-guard-duty     # GuardDuty configuration
│   ├── guardduty
│   │   ├── guardduty.tf         # Main configuration for GuardDuty
│   │   ├── outputs.tf           # Outputs for GuardDuty
│   │   └── variables.tf         # Variables for GuardDuty
│   ├── main.tf                  # Main Terraform configuration for GuardDuty
│   ├── modules                  # Modules directory for GuardDuty
│   │   └── guardduty
│   │       ├── main.tf          # GuardDuty module main configuration
│   │       ├── outputs.tf       # Outputs for GuardDuty module
│   │       └── variables.tf     # Variables for GuardDuty module
│   ├── outputs.tf               # Outputs for GuardDuty
│   ├── terraform.tfvars         # Terraform variables for GuardDuty
│   └── variables.tf             # Variables for GuardDuty
├── terraform-aws-hsm            # HSM configuration
│   ├── cloudhsm
│   │   ├── cloudhsm.tf          # Main configuration for CloudHSM
│   │   ├── outputs.tf           # Outputs for CloudHSM
│   │   └── variables.tf         # Variables for CloudHSM
│   ├── main.tf                  # Main Terraform configuration for HSM
│   ├── modules                  # Modules directory for HSM
│   │   └── cloudhsm
│   │       ├── main.tf          # CloudHSM module main configuration
│   │       ├── outputs.tf       # Outputs for CloudHSM module
│   │       └── variables.tf     # Variables for CloudHSM module
│   ├── outputs.tf               # Outputs for HSM
│   ├── terraform.tfvars         # Terraform variables for HSM
│   └── variables.tf             # Variables for HSM
├── terraform-aws-iam            # IAM configuration
│   ├── main.tf                  # Main Terraform configuration for IAM
│   ├── modules                  # Modules directory for IAM
│   │   ├── group
│   │   │   ├── main.tf          # IAM Group module main configuration
│   │   │   ├── outputs.tf       # Outputs for IAM Group module
│   │   │   └── variables.tf     # Variables for IAM Group module
│   │   ├── role
│   │   │   ├── main.tf          # IAM Role module main configuration
│   │   │   ├── outputs.tf       # Outputs for IAM Role module
│   │   │   └── variables.tf     # Variables for IAM Role module
│   │   └── user
│   │       ├── main.tf          # IAM User module main configuration
│   │       ├── outputs.tf       # Outputs for IAM User module
│   │       └── variables.tf     # Variables for IAM User module
│   ├── outputs.tf               # Outputs for IAM
│   ├── providers.tf             # Provider configuration for IAM
│   └── variables.tf             # Variables for IAM
├── terraform-aws-inspector      # Inspector configuration
│   ├── inspector
│   │   ├── inspector.tf         # Main configuration for Inspector
│   │   ├── outputs.tf           # Outputs for Inspector
│   │   └── variables.tf         # Variables for Inspector
│   ├── main.tf                  # Main Terraform configuration for Inspector
│   ├── modules                  # Modules directory for Inspector
│   │   └── inspector
│   │       ├── main.tf          # Inspector module main configuration
│   │       ├── outputs.tf       # Outputs for Inspector module
│   │       └── variables.tf     # Variables for Inspector module
│   ├── outputs.tf               # Outputs for Inspector
│   ├── terraform.tfvars         # Terraform variables for Inspector
│   └── variables.tf             # Variables for Inspector
├── terraform-aws-kms            # KMS configuration
│   ├── kms
│   │   ├── kms.tf               # Main configuration for KMS
│   │   ├── outputs.tf           # Outputs for KMS
│   │   └── variables.tf         # Variables for KMS
│   ├── main.tf                  # Main Terraform configuration for KMS
│   ├── modules                  # Modules directory for KMS
│   │   └── kms_key
│   │       ├── main.tf          # KMS Key module main configuration
│   │       ├── outputs.tf       # Outputs for KMS Key module
│   │       └── variables.tf     # Variables for KMS Key module
│   ├── outputs.tf               # Outputs for KMS
│   ├── terraform.tfvars         # Terraform variables for KMS
│   └── variables.tf             # Variables for KMS
├── terraform-aws-lambda         # Lambda configuration
│   ├── lambda
│   │   ├── lambda.tf            # Main configuration for Lambda
│   │   ├── outputs.tf           # Outputs for Lambda
│   │   └── variables.tf         # Variables for Lambda
│   ├── main.tf                  # Main Terraform configuration for Lambda
│   ├── modules                  # Modules directory for Lambda
│   │   └── lambda_function
│   │       ├── main.tf          # Lambda Function module main configuration
│   │       ├── outputs.tf       # Outputs for Lambda Function module
│   │       └── variables.tf     # Variables for Lambda Function module
│   ├── outputs.tf               # Outputs for Lambda
│   ├── terraform.tfvars         # Terraform variables for Lambda
│   └── variables.tf             # Variables for Lambda
├── terraform-aws-memorydb       # MemoryDB configuration
│   ├── main.tf                  # Main Terraform configuration for MemoryDB
│   ├── memorydb
│   │   ├── memorydb.tf          # Main configuration for MemoryDB
│   │   ├── outputs.tf           # Outputs for MemoryDB
│   │   └── variables.tf         # Variables for MemoryDB
│   ├── modules                  # Modules directory for MemoryDB
│   │   └── memorydb_cluster
│   │       ├── main.tf          # MemoryDB Cluster module main configuration
│   │       ├── outputs.tf       # Outputs for MemoryDB Cluster module
│   │       └── variables.tf     # Variables for MemoryDB Cluster module
│   ├── outputs.tf               # Outputs for MemoryDB
│   ├── terraform.tfvars         # Terraform variables for MemoryDB
│   └── variables.tf             # Variables for MemoryDB
├── terraform-aws-mq             # MQ configuration
│   ├── main.tf                  # Main Terraform configuration for MQ
│   ├── modules                  # Modules directory for MQ
│   │   └── mq_instance
│   │       ├── main.tf          # MQ Instance module main configuration
│   │       ├── outputs.tf       # Outputs for MQ Instance module
│   │       └── variables.tf     # Variables for MQ Instance module
│   ├── mq
│   │   ├── mq.tf                # Main configuration for MQ
│   │   ├── outputs.tf           # Outputs for MQ
│   │   └── variables.tf         # Variables for MQ
│   ├── outputs.tf               # Outputs for MQ
│   ├──terraform.tfvars          # Terraform variables for MQ
│   └── variables.tf             # Variables for MQ
├── terraform-aws-rds            # RDS configuration
│   ├── main.tf                  # Main Terraform configuration for RDS
│   ├── modules                  # Modules directory for RDS
│   │   └── rds_instance
│   │       ├── main.tf          # RDS Instance module main configuration
│   │       ├── outputs.tf       # Outputs for RDS Instance module
│   │       └── variables.tf     # Variables for RDS Instance module
│   ├── outputs.tf               # Outputs for RDS
│   ├── rds
│   │   ├── outputs.tf           # Outputs for RDS
│   │   ├── rds.tf               # Main configuration for RDS
│   │   └── variables.tf         # Variables for RDS
│   ├── terraform.tfvars         # Terraform variables for RDS
│   └── variables.tf             # Variables for RDS
├── terraform-aws-redshift       # Redshift configuration
│   ├── main.tf                  # Main Terraform configuration for Redshift
│   ├── modules                  # Modules directory for Redshift
│   │   └── redshift_cluster
│   │       ├── main.tf          # Redshift Cluster module main configuration
│   │       ├── outputs.tf       # Outputs for Redshift Cluster module
│   │       └── variables.tf     # Variables for Redshift Cluster module
│   ├── outputs.tf               # Outputs for Redshift
│   ├── redshift
│   │   ├── outputs.tf           # Outputs for Redshift
│   │   ├── redshift.tf          # Main configuration for Redshift
│   │   └── variables.tf         # Variables for Redshift
│   ├── terraform.tfvars         # Terraform variables for Redshift
│   └── variables.tf             # Variables for Redshift
├── terraform-aws-route53        # Route53 configuration
│   ├── main.tf                  # Main Terraform configuration for Route53
│   ├── outputs.tf               # Outputs for Route53
│   ├── provider.tf              # Provider configuration for Route53
│   └── variables.tf             # Variables for Route53
├── terraform-aws-s3             # S3 configuration
│   ├── main.tf                  # Main Terraform configuration for S3
│   ├── outputs.tf               # Outputs for S3
│   ├── terraform.tfvars         # Terraform variables for S3
│   ├── variables.tf             # Variables for S3
│   └── versions.tf              # Version constraints for S3
├── terraform-aws-secret-manager # Secret Manager configuration
│   ├── main.tf                  # Main Terraform configuration for Secret Manager
│   ├── modules                  # Modules directory for Secret Manager
│   │   └── secret_manager
│   │       ├── main.tf          # Secret Manager module main configuration
│   │       ├── outputs.tf       # Outputs for Secret Manager module
│   │       └── variables.tf     # Variables for Secret Manager module
│   ├── outputs.tf               # Outputs for Secret Manager
│   ├── secret_manager
│   │   ├── outputs.tf           # Outputs for Secret Manager
│   │   ├── secret_manager.tf    # Main configuration for Secret Manager
│   │   └── variables.tf         # Variables for Secret Manager
│   ├── terraform.tfvars         # Terraform variables for Secret Manager
│   └── variables.tf             # Variables for Secret Manager
├── terraform-aws-shield         # Shield configuration
│   ├── main.tf                  # Main Terraform configuration for Shield
│   ├── modules                  # Modules directory for Shield
│   │   └── shield
│   │       ├── main.tf          # Shield module main configuration
│   │       ├── outputs.tf       # Outputs for Shield module
│   │       └── variables.tf     # Variables for Shield module
│   ├── outputs.tf               # Outputs for Shield
│   ├── shield
│   │   ├── outputs.tf           # Outputs for Shield
│   │   ├── shield.tf            # Main configuration for Shield
│   │   └── variables.tf         # Variables for Shield
│   ├── terraform.tfvars         # Terraform variables for Shield
│   └── variables.tf             # Variables for Shield
├── terraform-aws-sns            # SNS configuration
│   ├── main.tf                  # Main Terraform configuration for SNS
│   ├── terraform.tfvars         # Terraform variables for SNS
│   └── variables.tf             # Variables for SNS
├── terraform-aws-sqs            # SQS configuration
│   ├── sqs
│   │   ├── main.tf              # Main configuration for SQS
│   │   ├── policies.tf          # Policies for SQS
│   │   └── variables.tf         # Variables for SQS
│   ├── iam
│   │   ├── main.tf              # IAM configuration for SQS
│   │   ├── outputs.tf           # Outputs for IAM in SQS
│   │   └── variables.tf         # Variables for IAM in SQS
│   ├── main.tf                  # Main Terraform configuration for SQS
│   ├── outputs.tf               # Outputs for SQS
│   └── variables.tf             # Variables for SQS
├── terraform-aws-storage-gw     # Storage Gateway configuration
│   ├── main.tf                  # Main Terraform configuration for Storage Gateway
│   ├── modules                  # Modules directory for Storage Gateway
│   │   └── storage_gateway
│   │       ├── main.tf          # Storage Gateway module main configuration
│   │       ├── outputs.tf       # Outputs for Storage Gateway module
│   │       └── variables.tf     # Variables for Storage Gateway module
│   ├── outputs.tf               # Outputs for Storage Gateway
│   ├── storage_gateway
│   │   ├── outputs.tf           # Outputs for Storage Gateway
│   │   ├── storage_gateway.tf   # Main configuration for Storage Gateway
│   │   └── variables.tf         # Variables for Storage Gateway
│   ├── terraform.tfvars         # Terraform variables for Storage Gateway
│   └── variables.tf             # Variables for Storage Gateway
├── terraform-aws-vpc            # VPC configuration
│   ├── main.tf                  # Main Terraform configuration for VPC
│   ├── outputs.tf               # Outputs for VPC
│   ├── providers.tf             # Provider configuration for VPC
│   ├── subnets
│   │   ├── main.tf              # Subnets configuration for VPC
│   │   ├── outputs.tf           # Outputs for VPC subnets
│   │   └── variables.tf         # Variables for VPC subnets
│   ├── variables.tf             # Variables for VPC
│   └── vpc
│       ├── main.tf              # VPC module main configuration
│       ├── outputs.tf           # Outputs for VPC module
│       └── variables.tf         # Variables for VPC module
└── terraform-aws-waf            # WAF configuration
    ├── main.tf                  # Main Terraform configuration for WAF
    ├── modules                  # Modules directory for WAF
    │   └── waf
    │       ├── main.tf          # WAF module main configuration
    │       ├── outputs.tf       # Outputs for WAF module
    │       └── variables.tf     # Variables for WAF module
    ├── outputs.tf               # Outputs for WAF
    ├── terraform.tfvars         # Terraform variables for WAF
    ├── variables.tf             # Variables for WAF
    └── waf
        ├── outputs.tf           # Outputs for WAF
        ├── variables.tf         # Variables for WAF
        └── waf.tf               # Main configuration for WAF
```

## Troubleshooting

- **Issue:** Terraform init fails.
  - **Solution:** Ensure you have internet connectivity and the correct permissions to access the repository.

- **Issue:** Terraform apply errors with AWS credentials.
  - **Solution:** Verify your AWS credentials are correctly configured by running `aws sts get-caller-identity`.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
