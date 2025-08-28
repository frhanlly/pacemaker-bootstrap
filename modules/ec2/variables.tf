
variable "region" {
  type        = string
  description = "region to deploy AWS resources"
}

variable "project_name" {
  type        = string
  description = "project name"
}


variable "tags" {
  type        = map(any)
  description = "pre-defined necessary tags for all resources"
}




variable "vpc_id" {
  type        = string
  description = "VPC id"
}






variable "ec2_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_ec2" {
  type        = string
  description = "AMI for EC2 instances"
}

variable "subnet_public_id" {
  type        = string
  description = "public subnet id"
}



variable "ec2_ssh_key_name" {
  type        = string
  description = "ssh key name for accessing nodes"
}