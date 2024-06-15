variable "user_name" {
  description = "The name of the IAM user."
  type        = string
}

variable "user_path" {
  description = "The path for the IAM user."
  type        = string
  default     = "/"
}
