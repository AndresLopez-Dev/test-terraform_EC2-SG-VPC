
# Provider
variable "region" {
  description = "Region"
  default = "us-east-1"
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

# Tags generales
variable "enviroment" {
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