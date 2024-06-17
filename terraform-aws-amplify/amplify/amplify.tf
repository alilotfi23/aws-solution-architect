module "amplify_app" {
  source      = "../modules/amplify_app"
  app_name    = var.app_name
  environment = var.environment
}
