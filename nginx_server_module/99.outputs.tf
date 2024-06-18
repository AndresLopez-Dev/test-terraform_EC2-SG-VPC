output "public_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = aws_instance.nginx-server.public_ip
}