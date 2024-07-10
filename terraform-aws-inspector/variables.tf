variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "workgroup_name" {
  description = "The name of the Athena workgroup."
  type        = string
}

variable "output_location" {
  description = "The S3 bucket location for query results."
  type        = string
}

variable "enforce_workgroup_configuration" {
  description = "Enforce the workgroup configuration."
  type        = bool
  default     = true
}

variable "description" {
  description = "Description of the Athena workgroup."
  type        = string
}
