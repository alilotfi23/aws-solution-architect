# terraform/outputs.tf
output "asg_id" {
  value = module.asg.asg_id
}
