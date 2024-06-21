
## Provider
variable "region" {
  description = "Region"
}

variable "access_key" {
  description = "pud key"
}

variable "secret_key" {
  description = "secret key"
}

## VPC - Redes
variable "vpc_cidr" {
  description = "CIDR de la VPC"
  default     = "172.31.0.0/16"
}

variable "public_subnets_cidr" {
  description = "CIDR de las subredes publicas"
}

# Instancia
variable "instance_name" {
  description = "Nombre de la instancia"
}

variable "instance_type" {
  description = "Tipo de instancia"
}

variable "ami_id" {
  description = "ID de la AMI"
}

variable "instance_code" {
  description = "Insercion de codigo en la EC2"
  default     = ""
}

# Tags generales
variable "environment" {
  description = "Ambiente"
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



## RDS variables

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
  