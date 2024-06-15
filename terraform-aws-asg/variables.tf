# terraform/variables.tf
variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "desired_capacity" {
  description = "The desired number of instances"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "The minimum number of instances"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum number of instances"
  type        = number
  default     = 3
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}
