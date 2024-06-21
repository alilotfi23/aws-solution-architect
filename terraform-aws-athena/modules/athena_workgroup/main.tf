resource "aws_athena_workgroup" "this" {
  name = var.workgroup_name

  configuration {
    result_configuration {
      output_location = var.output_location
    }

    enforce_workgroup_configuration = var.enforce_workgroup_configuration
  }

  description = var.description

  tags = {
    Name = var.workgroup_name
  }
}

output "athena_workgroup_arn" {
  value = aws_athena_workgroup.this.arn
}
