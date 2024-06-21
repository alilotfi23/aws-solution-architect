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
}

variable "description" {
  description = "Description of the Athena workgroup."
  type        = string
}
