resource "aws_db_subnet_group" "private_subnet_group" {
  name        = "${var.db_identifier}-private-subnet-group"
  description = "Private subnet group for RDS"
  subnet_ids  = [
    aws_subnet.private_subnets["us-east-1a"].id,
    aws_subnet.private_subnets["us-east-1b"].id,
  ]

  tags = {
    Name = "${var.db_identifier}-private-subnet-group"
  }
}