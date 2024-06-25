variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "directory_name" {
  description = "The fully qualified name for the directory, such as corp.example.com."
  type        = string
}

variable "password" {
  description = "The password for the directory administrator account."
  type        = string
}

variable "size" {
  description = "The size of the directory. Valid values: Small, Large."
  type        = string
  default     = "Small"
}

variable "vpc_settings" {
  description = "A list of VPC settings for the directory."
  type = object({
    vpc_id     = string
    subnet_ids = list(string)
  })
}

variable "edition" {
  description = "The edition of the AWS Managed Microsoft AD directory. Valid values: Standard, Enterprise."
  type        = string
  default     = "Standard"
}

variable "connect_settings" {
  description = "A list of connect settings for the directory."
  type = object({
    customer_dns_ips = list(string)
    customer_username = string
    subnet_ids = list(string)
    vpc_id = string
  })
  default = null
}

variable "tags" {
  description = "A map of tags to assign to the Directory Service resources."
  type        = map(string)
  default     = {}
}
