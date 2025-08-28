resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-vpc"
    }
  )


}