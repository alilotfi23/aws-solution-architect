region                  = "us-east-1"
table_name              = "my-dynamodb-table"
hash_key                = "id"
range_key               = null
attribute_definitions   = [
  {
    name = "id"
    type = "S"
  }
]
read_capacity           = 5
write_capacity          = 5
global_secondary_indexes = []
ttl                     = {
  attribute_name = ""
  enabled        = false
}
tags = {
  Environment = "production"
  Project     = "my-dynamodb-project"
}
