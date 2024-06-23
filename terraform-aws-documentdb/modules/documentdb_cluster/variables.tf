variable "cluster_identifier" {
  description = "The identifier for the DocumentDB cluster."
  type        = string
}

variable "instance_class" {
  description = "The instance type for the DocumentDB cluster instances."
  type        = string
}

variable "master_username" {
  description = "The master username for the DocumentDB cluster."
  type        = string
}

variable "master_password" {
  description = "The master password for the DocumentDB cluster."
  type        = string
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group for the DocumentDB cluster."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The list of VPC security group IDs for the DocumentDB cluster."
  type        = list(string)
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  type        = bool
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  type        = string
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in UTC."
  type        = string
}
