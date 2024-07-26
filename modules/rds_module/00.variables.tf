variable "rds_security_group_id" {
  description = "Grupo de seguridad para RDS"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de subnet IDs a usar para la instancia RDS"
  type        = list(string)
}

variable "db_identifier" {
  description = "Identificador de la base de datos"
  type        = string
}

variable "db_storage" {
  description = "Almacenamiento de la base de datos"
  type        = number
}

variable "db_engine" {
  description = "Motor de la base de datos"
  type        = string
}
variable "db_engine_version" {
  description = "Version del motor de la base de datos"
  type        = string
}
variable "rds_instance_type" {
  description = "Tipo de instancia"
  type        = string
}

variable "db_name" {
  description = "Nombre de la base de datos"
  type        = string
}
variable "db_username" {
  description = "Nombre de usuario admin de la base de datos"
  type        = string
}
variable "db_password" {
  description = "Contraseña de la base de datos"
  type        = string
}

variable "environment" {
  description = "Ambiente de la aplicacion"
  default     = "test"
  type        = string
}

variable "owner" {
  description = "Propietario"
  type        = string
}
variable "team" {
  description = "Equipo"
  type        = string
}
variable "project" {
  description = "Proyecto"
  type        = string
}

