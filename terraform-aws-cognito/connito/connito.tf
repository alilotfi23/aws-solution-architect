module "cognito" {
  source                        = "../modules/cognito"
  user_pool_name                = var.user_pool_name
  user_pool_domain              = var.user_pool_domain
  user_pool_client_name         = var.user_pool_client_name
  user_pool_client_callback_urls = var.user_pool_client_callback_urls
  user_pool_client_logout_urls  = var.user_pool_client_logout_urls
  identity_pool_name            = var.identity_pool_name
  supported_login_providers     = var.supported_login_providers
  tags                          = var.tags
}
