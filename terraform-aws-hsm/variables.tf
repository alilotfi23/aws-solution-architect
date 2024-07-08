variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the CloudHSM cluster."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the CloudHSM cluster."
  type        = list(string)
}

variable "hsm_eni_subnet_id" {
  description = "The subnet ID for the HSM's ENI."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to place the HSM."
  type        = string
}

variable "hsm_type" {
  description = "The type of HSM instance."
  type        = string
  default     = "hsm1.medium"
}

variable "tags" {
  description = "A map of tags to assign to the CloudHSM resources."
  type        = map(string)
  default     = {}
}
