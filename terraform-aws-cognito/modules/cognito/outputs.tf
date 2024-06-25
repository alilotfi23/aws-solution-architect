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
