variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "private_key_path" {
  description = "Path to the private key for SSH"
  default     = "~/.ssh/id_rsa"
}
