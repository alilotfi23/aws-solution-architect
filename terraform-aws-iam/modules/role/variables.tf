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
