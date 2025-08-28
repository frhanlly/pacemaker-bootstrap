resource "aws_security_group" "pacemaker_node_sg" {
  name        = "sg for pacemaker nodes"
  description = "allow all traffic if "
  vpc_id      = var.vpc_id

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-sg"
    }
  )
}

resource "aws_vpc_security_group_egress_rule" "allow_all_out" {
  security_group_id = aws_security_group.pacemaker_node_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}

resource "aws_vpc_security_group_ingress_rule" "allow_in" {
  security_group_id            = aws_security_group.pacemaker_node_sg.id
  referenced_security_group_id = aws_security_group.pacemaker_node_sg.id
  ip_protocol                  = "-1"
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_in" {
  security_group_id = aws_security_group.pacemaker_node_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_webpcs_in" {
  security_group_id = aws_security_group.pacemaker_node_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 2224
  ip_protocol       = "tcp"
  to_port           = 2224
}


