variable "vpc_id" {
  description = "ID de la vpc"
}

variable "sg_name" {
  description = "Nombre del sg"
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