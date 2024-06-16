provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source          = "./ec2"
  vpc_id          = module.vpc.vpc_id
  subnet_id       = module.vpc.subnet_id
  security_group  = module.vpc.security_group
}

module "ebs" {
  source      = "./ebs"
  instance_id = module.ec2.instance_id
  availability_zone = module.ec2.availability_zone
}

resource "null_resource" "provision" {
  depends_on = [module.ebs]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = module.ec2.public_ip
    }

    script = "${path.module}/provisioner.sh"
  }
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}
