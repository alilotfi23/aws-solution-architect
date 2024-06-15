provider "aws" {
  region  = var.region
  profile = var.profile
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-1"
}

variable "profile" {
  description = "The AWS CLI profile to use"
  type        = string
  default     = "default"
}
