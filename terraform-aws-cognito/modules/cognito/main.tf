resource "aws_cognito_user_pool" "this" {
  name = var.user_pool_name

  tags = var.tags
}

resource "aws_cognito_user_pool_domain" "this" {
  domain       = var.user_pool_domain
  user_pool_id = aws_cognito_user_pool.this.id
}

resource "aws_cognito_user_pool_client" "this" {
  name            = var.user_pool_client_name
  user_pool_id    = aws_cognito_user_pool.this.id
  callback_urls   = var.user_pool_client_callback_urls
  logout_urls     = var.user_pool_client_logout_urls
  allowed_oauth_flows          = ["code"]
  allowed_oauth_scopes         = ["email", "openid", "profile"]
  allowed_oauth_flows_user_pool_client = true
  supported_identity_providers = ["COGNITO"]
  generate_secret              = false

  tags = var.tags
}

resource "aws_cognito_identity_pool" "this" {
  identity_pool_name           = var.identity_pool_name
  allow_unauthenticated_identities = false
  cognito_identity_providers {
    provider_name = aws_cognito_user_pool.this.endpoint
    client_id     = aws_cognito_user_pool_client.this.id
  }

  supported_login_providers = var.supported_login_providers

  tags = var.tags
}

output "user_pool_id" {
  value = aws_cognito_user_pool.this.id
}

output "user_pool_client_id" {
  value = aws_cognito_user_pool_client.this.id
}

output "identity_pool_id" {
  value = aws_cognito_identity_pool.this.id
}

output "user_pool_domain" {
  value = aws_cognito_user_pool_domain.this.domain
}
