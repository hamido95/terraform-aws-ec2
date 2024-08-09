# EC2 Instances outputs 

# ec2_server_public_instance_ids
output "ec2_server_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_public.id
}

# ec2_public_ip
output "ec2_server_ami_id" {
  description = "Elastic IP associated to the server"
  value       = module.ec2_public.ami
}

# ec2_private_dns
output "ec2_private_dns" {
  description = "private dns of the server"
  value       = module.ec2_public.private_dns
}

# ec2_private_ip
output "ec2_private_ip" {
  description = "private ip of the server"
  value       = module.ec2_public.private_ip
}

# ec2_public_dns
output "ec2_public_dns" {
  description = "public dns of the server"
  value       = module.ec2_public.public_dns
}

# ec2_public_ip
output "ec2_public_ip" {
  description = "public ip of the server"
  value       = module.ec2_public.public_ip
}



  
