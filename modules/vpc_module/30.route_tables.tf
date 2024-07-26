## Route table
resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw.id
  }

  tags = {
    Name = "rt-${var.vpc_name}-public"
  }
  depends_on = [aws_vpc.vpc]
}


## Asociacion de la tabla de rutas para subredes publicas
resource "aws_route_table_association" "public_rt_subnets" {
  for_each       = aws_subnet.public_subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.vpc_rt.id
  depends_on     = [aws_subnet.public_subnets, aws_route_table.vpc_rt]
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "rt-${var.vpc_name}-private"
  }
  depends_on = [aws_vpc.vpc]
}

## Asociacion de la tabla de rutas para subredes privadas
resource "aws_route_table_association" "private_rt_subnets" {
  for_each       = aws_subnet.private_subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private_rt.id
  depends_on     = [aws_subnet.private_subnets, aws_route_table.private_rt]
}