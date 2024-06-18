## Route table
resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.test_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_igw.id
  }

  tags = {
    Name = "rt-${var.vpc_name}"
  }
  depends_on = [ aws_vpc.test_vpc ]
}

## Asociacion de la tabla de rutas
resource "aws_route_table_association" "public_rt_subnets" {
  for_each = aws_subnet.public_subnets
  subnet_id = each.value.id
  route_table_id = aws_route_table.vpc_rt.id
  depends_on = [ aws_subnet.public_subnets, aws_route_table.vpc_rt ]
}