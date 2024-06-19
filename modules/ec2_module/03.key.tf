
resource "aws_key_pair" "ec2-ssh" {
  key_name   = "${var.instance_name}-ssh"
  public_key = file("./${var.instance_name}.key.pub")

  tags = {
    Name       = "${var.instance_name}-ssh"
    Enviroment = var.environment
    Owner      = "David 3htp"
    Team       = "DevOps"
    Project    = "Aprendiendo terraform"
  }
}