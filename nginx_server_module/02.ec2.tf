### Instancia EC2
resource "aws_instance" "nginx-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.instance_subnet_id
  user_data     = var.instance_code

  key_name = aws_key_pair.nginx-server-ssh.key_name

  vpc_security_group_ids = [
    var.instance_sg_id,
  ]

  tags = {
    Name       = var.instance_name
    Enviroment = var.environment
    Owner      = var.owner
    Team       = var.team
    Project    = var.project
  }
}