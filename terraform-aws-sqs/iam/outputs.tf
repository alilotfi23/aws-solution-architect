// Outputs specific to IAM submodule
output "iam_role_arn" {
  value = aws_iam_role.example_role.arn
}
