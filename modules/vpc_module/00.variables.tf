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

variable "priv_subnets_cidr" {
  type = map(string)
  default = {
    "us-east-1a" = "172.31.20.0/24"
    "us-east-1b" = "172.31.21.0/24"
  }
  description = "Subredes privadas"
}