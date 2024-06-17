variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "eu-west-1"
}

variable "broker_name" {
  description = "The name of the MQ broker."
  type        = string
}

variable "broker_instance_type" {
  description = "The instance type of the broker."
  type        = string
  default     = "mq.t3.micro"
}

variable "engine_type" {
  description = "The type of broker engine (e.g., 'ActiveMQ')."
  type        = string
  default     = "ActiveMQ"
}

variable "engine_version" {
  description = "The version of the broker engine."
  type        = string
  default     = "5.15.14"
}

variable "deployment_mode" {
  description = "The deployment mode of the broker (e.g., 'SINGLE_INSTANCE')."
  type        = string
  default     = "SINGLE_INSTANCE"
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the broker."
  type        = list(string)
}

variable "security_group_ids" {
  description = "The list of security group IDs for the broker."
  type        = list(string)
}
