variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "repository_name" {
  description = "The name of the ECR repository."
  type        = string
}
