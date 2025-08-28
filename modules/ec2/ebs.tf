resource "aws_ebs_volume" "shared" {
  availability_zone    = "${var.region}a"
  size                 = 30
  multi_attach_enabled = true
  type                 = "io2"
  iops                 = "3000"
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-ebs-shared"
    }
  )
}


resource "aws_ebs_volume" "shared2" {
  availability_zone    = "${var.region}a"
  size                 = 15
  multi_attach_enabled = true
  type                 = "io2"
  iops                 = "3000"
  tags = merge(var.tags,
    {
      Name = "${var.project_name}-ebs-shared2"
    }
  )
}


resource "aws_volume_attachment" "ebs_att_one" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.shared.id
  instance_id = aws_instance.ec2_one.id
}


resource "aws_volume_attachment" "ebs_att_two" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.shared.id
  instance_id = aws_instance.ec2_two.id
}


resource "aws_volume_attachment" "ebs_att_one2" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.shared2.id
  instance_id = aws_instance.ec2_one.id
}


resource "aws_volume_attachment" "ebs_att_two2" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.shared2.id
  instance_id = aws_instance.ec2_two.id
}