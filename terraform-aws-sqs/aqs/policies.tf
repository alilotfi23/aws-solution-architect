// IAM policy for accessing SQS queue
resource "aws_iam_policy" "sqs_policy" {
  name        = "sqs_policy"
  description = "Policy for accessing SQS queue"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "sqs:GetQueueUrl",
          "sqs:SendMessage"
        ],
        Resource = aws_sqs_queue.example_queue.arn
      }
    ]
  })
}
