variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "protection_name" {
  description = "The name of the protection."
  type        = string
}

variable "resource_arn" {
  description = "The ARN of the resource to protect."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the AWS Shield resources."
  type        = map(string)
  default     = {}
}
