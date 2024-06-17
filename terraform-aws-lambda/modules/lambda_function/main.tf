resource "aws_lambda_function" "this" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn
  s3_bucket     = var.source_code_s3_bucket
  s3_key        = var.source_code_s3_key

  environment {
    variables = var.environment_variables
  }
}

output "lambda_function_arn" {
  value = aws_lambda_function.this.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.this.function_name
}
