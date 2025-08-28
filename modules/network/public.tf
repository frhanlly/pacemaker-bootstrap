resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr, 8, 0)

  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-public-subnet"
    }
  )
}

resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-public-rtb"
    }
  )
}


resource "aws_route_table_association" "a_public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rtb.id
}