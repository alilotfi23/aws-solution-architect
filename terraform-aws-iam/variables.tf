variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-west-1"
}

variable "user_name" {
  description = "The name of the IAM user."
  type        = string
}

variable "user_path" {
  description = "The path for the IAM user."
  type        = string
  default     = "/"
}

variable "group_name" {
  description = "The name of the IAM group."
  type        = string
}

variable "group_path" {
  description = "The path for the IAM group."
  type        = string
  default     = "/"
}

variable "role_name" {
  description = "The name of the IAM role."
  type        = string
}

variable "role_path" {
  description = "The path for the IAM role."
  type        = string
  default     = "/"
}

variable "assume_role_policy" {
  description = "The assume role policy for the IAM role."
  type        = string
}
