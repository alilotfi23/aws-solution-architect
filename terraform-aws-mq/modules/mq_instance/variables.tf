variable "broker_name" {
  description = "The name of the MQ broker."
  type        = string
}

variable "broker_instance_type" {
  description = "The instance type of the broker."
  type        = string
}

variable "engine_type" {
  description = "The type of broker engine (e.g., 'ActiveMQ')."
  type        = string
}

variable "engine_version" {
  description = "The version of the broker engine."
  type        = string
}

variable "deployment_mode" {
  description = "The deployment mode of the broker (e.g., 'SINGLE_INSTANCE')."
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the broker."
  type        = list(string)
}

variable "security_group_ids" {
  description = "The list of security group IDs for the broker."
  type        = list(string)
}
