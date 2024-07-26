variable "vpc_cidr_block" {
  description = "CIDR de la vpc"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la vpc"
  type        = string
}


## Subnets
variable "pub_subnets_cidr" {
  type        = map(string)
  description = "Subredes publicas"
}

variable "priv_subnets_cidr" {
  type        = map(string)
  description = "Subredes privadas"
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