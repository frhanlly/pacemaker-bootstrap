# Create a new host with instance type of c5.18xlarge with Auto Placement
# and Host Recovery enabled.
resource "aws_instance" "ec2_one" {
  ami           = var.ami_ec2
  instance_type = var.ec2_type
  subnet_id     = var.subnet_public_id
  key_name      = var.ec2_ssh_key_name

  vpc_security_group_ids = [aws_security_group.pacemaker_node_sg.id]


  tags = merge(var.tags,
    {
      Name = "${var.project_name}-ec2-one"
    }
  )
}


resource "aws_instance" "ec2_two" {
  ami           = var.ami_ec2
  instance_type = var.ec2_type
  subnet_id     = var.subnet_public_id
  key_name      = "pcs"

  vpc_security_group_ids = [aws_security_group.pacemaker_node_sg.id]

  tags = merge(var.tags,
    {
      Name = "${var.project_name}-ec2-two"
    }
  )
}

