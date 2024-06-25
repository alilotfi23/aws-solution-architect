region                          = "us-east-1"
user_pool_name                  = "my-cognito-user-pool"
user_pool_domain                = "my-user-pool-domain"
user_pool_client_name           = "my-user-pool-client"
user_pool_client_callback_urls  = ["https://example.com/callback"]
user_pool_client_logout_urls    = ["https://example.com/logout"]
identity_pool_name              = "my-identity-pool"
supported_login_providers       = {
  "login.example.com" = "app-id"
}
tags = {
  Environment = "production"
  Project     = "my-cognito-project"
}
