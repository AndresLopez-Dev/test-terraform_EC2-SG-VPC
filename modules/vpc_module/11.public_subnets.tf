## Subnets publicas
resource "aws_subnet" "public_subnets" {
  vpc_id                  = aws_vpc.vpc.id
  for_each                = var.pub_subnets_cidr
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-vpc-public-subnet-${each.key}"
  }
  depends_on = [aws_vpc.vpc]
}