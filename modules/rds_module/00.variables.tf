variable "db_identifier" {
  description = "Identificador de la DB"
}

variable "db_storage" {
  description = "Almacenamiento de la DB"
}
  
variable "db_engine" {
  description = "Motor de la DB"
}
variable "db_engine_version" {
  description = "Version del motor de la DB"
}
variable "rds_instance_type" {
  description = "Tipo de instancia"
}
  
variable "db_name" {
  description = "Nombre de la DB"
}
variable "db_username" {
  description = "Nombre de usuario admin de la DB"
}
variable "db_password" {
  description = "Contraseña de la DB"
}
  
variable "environment" {
  description = "Ambiente de la aplicacion"
  default     = "test"
}

variable "owner" {
  description = "Propietario"
}
variable "team" {
  description = "Equipo"
}
variable "project" {
  description = "Proyecto"
}

variable "subnet_ids" {
  # type        = map(string)
  description = "List of subnet IDs to use for the RDS instance"
}