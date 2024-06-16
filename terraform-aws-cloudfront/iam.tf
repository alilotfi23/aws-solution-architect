resource "aws_iam_role" "cloudfront_access" {
  name = "cloudfront-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })

  tags = {
    Name        = "cloudfront-access-role"
    Environment = "production"
  }
}

resource "aws_iam_policy" "cloudfront_s3_policy" {
  name        = "cloudfront-s3-access-policy"
  description = "Policy to allow CloudFront to access S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject"
        ]
        Resource = "${var.s3_bucket_arn}/*"
      },
    ]
  })

  tags = {
    Name        = "cloudfront-s3-access-policy"
    Environment = "production"
  }
}

resource "aws_iam_role_policy_attachment" "cloudfront_access_attachment" {
  role       = aws_iam_role.cloudfront_access.name
  policy_arn = aws_iam_policy.cloudfront_s3_policy.arn
}
