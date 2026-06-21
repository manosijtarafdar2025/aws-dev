resource "aws_instance" "appserver" {
  count                  = var.ec2_instance_count["dev"]
  ami                    = var.instance_os["amazon_linux_2023"]
  instance_type          = var.instance_type["dev"]
  iam_instance_profile   = aws_iam_instance_profile.ec2_instance_profile.name
  # Subnet Configuration
  subnet_id              = aws_subnet.private_subnet.id
  # Security Group
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  # EBS Storage Configuration
  root_block_device {
    encrypted   = true
    kms_key_id  = aws_kms_key.ec2_key.arn
    volume_size = 8
    volume_type = "gp3"
  }
  tags = var.tags
}