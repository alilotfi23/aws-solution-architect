resource "aws_iam_role" "role" {
  name               = var.role_name
  path               = var.role_path
  assume_role_policy = var.assume_role_policy

  tags = {
    Name = var.role_name
  }
}

output "role_name" {
  value = aws_iam_role.role.name
}
