# AWS EC2 Instance Terraform Module for server
module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  name = "${local.name}-server"
  ami                    = "ami-07c8c1b18ca66bb07"
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.server_security_group.security_group_id]
  tags                   = local.common_tags
}