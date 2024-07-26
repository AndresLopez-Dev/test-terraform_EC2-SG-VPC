resource "aws_security_group" "rds_aurora_security_group" {
  name        = "${var.sg_name}-sg"
  description = "Security group for Aurora Serverless"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.sg_port
    to_port     = var.sg_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = "${var.sg_name}-sg"
    Enviroment = var.environment
    Owner      = var.owner
    Team       = var.team
    Project    = var.project
  }
}