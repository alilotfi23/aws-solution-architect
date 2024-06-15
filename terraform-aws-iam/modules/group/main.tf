resource "aws_iam_group" "group" {
  name = var.group_name
  path = var.group_path

  tags = {
    Name = var.group_name
  }
}

resource "aws_iam_group_membership" "group_membership" {
  group = aws_iam_group.group.name
  users = var.users
}

output "group_name" {
  value = aws_iam_group.group.name
}
