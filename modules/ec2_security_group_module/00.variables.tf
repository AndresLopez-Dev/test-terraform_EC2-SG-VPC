variable "vpc_id" {
  description = "ID de la vpc"
  type        = string
}

variable "sg_name" {
  description = "Nombre del sg"
  type        = string
}

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