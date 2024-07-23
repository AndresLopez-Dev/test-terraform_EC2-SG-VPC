resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnets["us-east-1a"].id

  tags = {
    Name = "${var.vpc_name}-nat-gw"
  }
  depends_on = [aws_subnet.public_subnets, aws_internet_gateway.internet_gw]
}