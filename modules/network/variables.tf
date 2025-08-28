
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


variable "vpc_cidr" {
  type        = string
  description = "VPC cidr block"
}