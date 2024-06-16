// Example main.tf in iam submodule

// Create an IAM role
resource "aws_iam_role" "example_role" {
  name               = "example-role-${var.environment}"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action    = "sts:AssumeRole"
      }
    ]
  })
}

// Example IAM policy attachment
resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.example_role.name
  policy_arn = aws_iam_policy.example_policy.arn
}

// Define outputs for IAM submodule
output "iam_role_arns" {
  value = aws_iam_role.example_role.arn
}
