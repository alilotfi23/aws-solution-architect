module "api_gateway" {
  source              = "../modules/api_gateway"
  api_name            = var.api_name
  stage_name          = var.stage_name
  description         = var.description
  endpoint_type       = var.endpoint_type
  lambda_function_arn = var.lambda_function_arn
}
