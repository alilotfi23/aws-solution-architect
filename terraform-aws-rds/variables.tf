variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "eu-west-1"
}

variable "db_instance_identifier" {
  description = "The identifier for the RDS instance."
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage size (in GB) for the RDS instance."
  type        = number
}

variable "engine" {
  description = "The database engine type for the RDS instance."
  type        = string
}

variable "engine_version" {
  description = "The version number of the database engine."
  type        = string
}

variable "instance_class" {
  description = "The instance type for the RDS instance."
  type        = string
}

variable "username" {
  description = "The master username for the RDS instance."
  type        = string
}

variable "password" {
  description = "The master password for the RDS instance."
  type        = string
}

variable "db_name" {
  description = "The name of the default database created in the RDS instance."
  type        = string
}

variable "publicly_accessible" {
  description = "Whether the RDS instance should have a public IP address."
  type        = bool
  default     = false
}

variable "subnet_group_name" {
  description = "The name of the DB subnet group for the RDS instance."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The list of VPC security group IDs for the RDS instance."
  type        = list(string)
}

variable "parameter_group_name" {
  description = "The name of the parameter group for the RDS instance."
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
  default     = 7
}

variable "multi_az" {
  description = "Whether to enable Multi-AZ deployment for high availability."
  type        = bool
  default     = false
}
