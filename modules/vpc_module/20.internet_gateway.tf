## Internet gateway
resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "${var.vpc_name}-int-gw"
  }
  depends_on = [aws_vpc.test_vpc]
}