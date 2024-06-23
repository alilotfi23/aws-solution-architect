resource "aws_dynamodb_table" "this" {
  name           = var.table_name
  hash_key       = var.hash_key
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  dynamic "range_key" {
    for_each = var.range_key != null ? [var.range_key] : []
    content {
      name = var.range_key
      type = "S"
    }
  }

  attribute {
    name = var.hash_key
    type = "S"
  }

  dynamic "attribute" {
    for_each = var.range_key != null ? [var.range_key] : []
    content {
      name = var.range_key
      type = "S"
    }
  }

  dynamic "attribute" {
    for_each = var.attribute_definitions
    content {
      name = each.value.name
      type = each.value.type
    }
  }

  dynamic "global_secondary_index" {
    for_each = var.global_secondary_indexes
    content {
      name               = each.value.name
      hash_key           = each.value.hash_key
      range_key          = each.value.range_key
      read_capacity      = each.value.read_capacity
      write_capacity     = each.value.write_capacity
      projection_type    = each.value.projection_type
      non_key_attributes = each.value.non_key_attributes
    }
  }

  dynamic "ttl" {
    for_each = var.ttl.enabled ? [var.ttl] : []
    content {
      attribute_name = var.ttl.attribute_name
      enabled        = var.ttl.enabled
    }
  }

  tags = var.tags
}

output "table_name" {
  value = aws_dynamodb_table.this.name
}

output "table_arn" {
  value = aws_dynamodb_table.this.arn
}
