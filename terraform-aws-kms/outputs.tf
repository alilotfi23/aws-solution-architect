output "kms_key_id" {
  value = module.kms_key.key_id
}

output "kms_key_arn" {
  value = module.kms_key.key_arn
}

output "kms_key_alias" {
  value = module.kms_key.key_alias
}
