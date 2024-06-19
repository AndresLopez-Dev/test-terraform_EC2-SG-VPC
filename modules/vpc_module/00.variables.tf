variable "vpc_cidr_block" {
  description = "CIDR de la vpc"
}

variable "vpc_name" {
  description = "Nombre de la vpc"
}

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

## Subnets

variable "pub_subnets_cidr" {
  description = "Subredes publicas"
}