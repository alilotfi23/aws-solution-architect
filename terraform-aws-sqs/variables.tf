// Variables for the whole project
variable "region" {
  default = "eu-west-1"
}

variable "environment" {
  default = "dev"
}

// Variables for the main.tf
variable "instance_ami" {
  description = "AMI ID for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}
