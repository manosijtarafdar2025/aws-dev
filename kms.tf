# Using AWS managed KMS key.

# resource "aws_kms_key" "ec2_key" {
#   description               = "KMS key for EC2 instance encryption"
#   deletion_window_in_days   = 10
#   enable_key_rotation       = true
#   tags                      = var.tags 
# }