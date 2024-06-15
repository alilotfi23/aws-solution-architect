variable "group_name" {
  description = "The name of the IAM group."
  type        = string
}

variable "group_path" {
  description = "The path for the IAM group."
  type        = string
  default     = "/"
}

variable "users" {
  description = "A list of IAM user names to add to the group."
  type        = list(string)
}
