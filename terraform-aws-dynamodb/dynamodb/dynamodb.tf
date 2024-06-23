module "dynamodb_table" {
  source                  = "../modules/dynamodb_table"
  table_name              = var.table_name
  hash_key                = var.hash_key
  range_key               = var.range_key
  attribute_definitions   = var.attribute_definitions
  read_capacity           = var.read_capacity
  write_capacity          = var.write_capacity
  global_secondary_indexes = var.global_secondary_indexes
  ttl                     = var.ttl
  tags                    = var.tags
}
