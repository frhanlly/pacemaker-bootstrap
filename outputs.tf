output "ec2_one_public_ip" {
  value       = module.ec2.ec2_one_public_ip
  description = "First ec2 public ip"
}

output "ec2_two_public_ip" {
  value       = module.ec2.ec2_two_public_ip
  description = "Second ec2 public ip"
}