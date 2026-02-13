resource "aws_instance" "this" {
  ami                         = var.ami
  instance_type               = var.instance_type
  iam_instance_profile        = var.iam_instance_profile
  vpc_security_group_ids      = var.security_group_ids
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  private_ip = var.private_ip != "" ? var.private_ip : null

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
    http_put_response_hop_limit = "2"
  }

  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = var.root_volume_type
    encrypted             = true
    delete_on_termination = true
  }

  user_data = var.user_data

volume_tags = {
    Name = "EBS Instance -  ${var.instance_name}"
  }

  tags = var.tags
}