## Internet gateway
resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "gw-${var.vpc_name}"
  }
  depends_on = [aws_vpc.test_vpc]
}