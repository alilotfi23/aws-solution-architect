module "ami" {
  source         = "./modules/ami"
  ami_name       = var.ami_name
  instance_type  = var.instance_type
  aws_region     = var.aws_region
}
