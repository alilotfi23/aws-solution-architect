variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "eu-west-1"
}

variable "cluster_identifier" {
  description = "The identifier for the Aurora cluster."
  type        = string
}

variable "engine" {
  description = "The database engine type for the Aurora cluster."
  type        = string
  default     = "aurora-mysql"
}

variable "engine_version" {
  description = "The version number of the database engine."
  type        = string
}

variable "instance_class" {
  description = "The instance type for the Aurora cluster instances."
  type        = string
}

variable "master_username" {
  description = "The master username for the Aurora cluster."
  type        = string
}

variable "master_password" {
  description = "The master password for the Aurora cluster."
  type        = string
}

variable "db_name" {
  description = "The name of the default database created in the Aurora cluster."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The list of VPC security group IDs for the Aurora cluster."
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group for the Aurora cluster."
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  type        = string
  default     = "07:00-09:00"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in UTC."
  type        = string
  default     = "sun:23:45-mon:00:15"
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}
