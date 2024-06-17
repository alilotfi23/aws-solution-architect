provider "aws" {
  region = var.region
}

module "amplify_app" {
  source      = "./modules/amplify_app"
  app_name    = var.app_name
  environment = var.environment
}

output "amplify_app_id" {
  value = module.amplify_app.amplify_app_id
}

output "amplify_app_arn" {
  value = module.amplify_app.amplify_app_arn
}
