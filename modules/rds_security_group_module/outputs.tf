output "sg_id" {
  description = "ID del grupo de seguridad"
  value       = aws_security_group.rds_aurora_security_group.id
}