# Security group module for public server

module "server_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"
  
  name = "${local.name}-server-security-group"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  # Ingress Rules 
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule 
  egress_rules = ["all-all"]
  tags = local.common_tags
}