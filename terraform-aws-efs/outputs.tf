output "efs_dns_names" {
  description = "The DNS names for the EFS mount targets"
  value = [for mt in aws_efs_mount_target.efs_mount : mt.dns_name]
}
