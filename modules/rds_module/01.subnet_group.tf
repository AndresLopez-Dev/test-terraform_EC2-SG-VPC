resource "aws_db_subnet_group" "private_subnet_group" {
  name        = "${var.db_identifier}-private-subnet-group"
  description = "Private subnet group for RDS"
  subnet_ids  = var.subnet_ids

  tags = {
    Name = "${var.db_identifier}-private-subnet-group"
  }
}