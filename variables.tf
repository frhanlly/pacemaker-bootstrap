variable "tags" {
  type        = map(any)
  description = "A map of tags to add to AWS resources"
}

variable "region" {
  type        = string
  description = "region to deploy AWS resources"
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr block"
}


variable "ec2_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_ec2" {
  type        = string
  description = "AMI for EC2 instances"
}

variable "ec2_ssh_key_name" {
  type        = string
  description = "ssh key name for accessing nodes"
}