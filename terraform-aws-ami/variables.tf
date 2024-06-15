variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-west-2"
}

variable "ami_name" {
  description = "The name of the AMI"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the AMI creation"
  type        = string
  default     = "t2.micro"
}
