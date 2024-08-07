## Grupo de seguridad
resource "aws_security_group" "ec2-sg" {
  name   = "${var.sg_name}-sg"
  vpc_id = var.vpc_id

  description = "Security group allowing SSH and HTTP access"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
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