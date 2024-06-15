variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet."
  type        = string
}

variable "igw_id" {
  description = "The ID of the Internet Gateway."
  type        = string
}
