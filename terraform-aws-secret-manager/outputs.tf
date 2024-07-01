output "secret_arn" {
  value = module.secrets_manager.secret_arn
}

output "secret_name" {
  value = module.secrets_manager.secret_name
}
