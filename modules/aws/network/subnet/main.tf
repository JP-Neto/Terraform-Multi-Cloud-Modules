resource "aws_subnet" "this" {
  for_each          = var.public_subnet_names
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_blocks_public[each.key]
  availability_zone = var.availability_zones[each.key]

  tags = {
    Name = each.value
  }
}