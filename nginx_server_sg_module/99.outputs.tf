output "sg_id" {
  description = "ID del sg"
  value       = aws_security_group.nginx-server-sg.id
}