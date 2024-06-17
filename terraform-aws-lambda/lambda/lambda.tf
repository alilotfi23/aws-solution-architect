module "lambda_function" {
  source          = "../modules/lambda_function"
  function_name   = var.function_name
  handler         = var.handler
  runtime         = var.runtime
  role_arn        = var.role_arn
  source_code_s3_bucket = var.source_code_s3_bucket
  source_code_s3_key    = var.source_code_s3_key
}
