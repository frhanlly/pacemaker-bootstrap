output "ec2_one_public_ip" {
  value = aws_instance.ec2_one.public_ip
}

output "ec2_two_public_ip" {
  value = aws_instance.ec2_two.public_ip
}