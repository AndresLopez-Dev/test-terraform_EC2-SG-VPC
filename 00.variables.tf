# locals {
#   vpc_id = var.create_vpc ? module.vpc[0].vpc_id : var.vpc_id
#   subnet_ids = var.create_vpc ? module.vpc[0].private_subnet_ids : var.ids_subnets_vpc
#   sg_id = var.create_vpc ? module.rds_sg[0].sg_id : var.id_sg_rds
# }

## Opciones: Que servicio crear
variable "create_vpc" {
  description = "Opcion: Crear VPC"
  default     = false
  type        = bool
}

variable "create_rds_sg" {
  description = "Opcion: Crear Grupo de seguridad para instancia RDS"
  default     = false
  type        = bool
}

variable "create_ec2_sg" {
  description = "Opcion: Crear Grupo de seguridad para instancia EC2"
  default     = false
  type        = bool
}

variable "create_ec2" {
  description = "Opcion: Crear instancia EC2"
  default     = false
  type        = bool
}

variable "create_rds" {
  description = "Opcion: Crear instancia RDS"
  default     = false
  type        = bool
}


## Provider
variable "region" {
  description = "Region"
  type        = string
}

variable "access_key" {
  description = "pud key"
  type        = string
}

variable "secret_key" {
  description = "secret key"
  type        = string
}

## VPC - Redes
variable "vpc_cidr" {
  description = "CIDR de la VPC"
  default     = "172.31.0.0/16"
  type        = string
}

variable "public_subnets_cidr" {
  description = "CIDR de las subredes publicas"
  type        = map(string)
}

variable "private_subnets_cidr" {
  description = "CIDR de las subredes privadas"
  type        = map(string)
}

# Instancia EC2
variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "ami_id" {
  description = "ID de la AMI EC2"
  type        = string
}

variable "instance_code" {
  description = "Insercion de codigo en la EC2"
  default     = ""
}

# Tags generales
variable "environment" {
  description = "Ambiente"
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



## RDS variables

variable "db_identifier" {
  description = "Identificador de la base de datos"
  type        = string
}

variable "db_storage" {
  description = "Almacenamiento de la base de datos"
  type        = number
  default     = 0
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
  description = "Tipo de instancia RDS"
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

## Grupo de seguridad para RDS
variable "sg_rds_port" {
  description = "Puerto para el grupo de seguridad RDS"
  default     = 3306
  type        = number
}