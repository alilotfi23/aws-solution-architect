resource "aws_iam_user" "user" {
  name = var.user_name
  path = var.user_path

  tags = {
    Name = var.user_name
  }
}

output "user_name" {
  value = aws_iam_user.user.name
}
