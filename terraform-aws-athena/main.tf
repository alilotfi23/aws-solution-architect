provider "aws" {
  region = var.region
}

module "athena_workgroup" {
  source              = "./modules/athena_workgroup"
  workgroup_name      = var.workgroup_name
  output_location     = var.output_location
  enforce_workgroup_configuration = var.enforce_workgroup_configuration
  description         = var.description
}

output "athena_workgroup_arn" {
  value = module.athena_workgroup.athena_workgroup_arn
}
