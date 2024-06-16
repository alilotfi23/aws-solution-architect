resource "aws_efs_file_system" "efs" {
  creation_token = "my-efs-token"
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }

  tags = {
    Name = "MyEFS"
  }
}

resource "aws_efs_mount_target" "efs_mount" {
  for_each = toset(var.subnet_ids)

  file_system_id = aws_efs_file_system.efs.id
  subnet_id      = each.value
  security_groups = var.security_group_ids
}

output "efs_id" {
  value = aws_efs_file_system.efs.id
}
