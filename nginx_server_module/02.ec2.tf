### Instancia EC2
resource "aws_instance" "nginx-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.instance_subnet_id
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install -y nginx
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF

  vpc_security_group_ids = [
    var.instance_sg_id,
    # aws_security_group.nginx-server-sg.id
  ]

  tags = {
    Name       = var.instance_name
    Enviroment = var.enviroment
    Owner      = var.owner
    Team       = var.team
    Project    = var.project
  }
}