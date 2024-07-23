## Subnets privadas
resource "aws_subnet" "private_subnets" {
  vpc_id                  = aws_vpc.test_vpc.id
  for_each                = var.priv_subnets_cidr
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-vpc-private-subnet-${each.key}"
  }
  depends_on = [aws_vpc.test_vpc]
}