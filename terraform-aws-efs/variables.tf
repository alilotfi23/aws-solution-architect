variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The VPC ID where EFS will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where EFS mount targets will be created"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to be associated with EFS"
  type        = list(string)
}
