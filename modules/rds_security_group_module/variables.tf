variable "vpc_id" {
  description = "ID de la vpc donde se contruye el grupo de seguridad"
  type        = string
}

variable "sg_name" {
  description = "Nombre del grupo de seguridad"
  type        = string
}

variable "sg_port" {
  description = "Puerto"
  type        = number
}

## Tags generales
variable "environment" {
  description = "Ambiente en el que se esta desplegando: test, dev, prod"
  default     = "Test"
  type        = string
}

variable "owner" {
  description = "Quien esta creado la infraestructura"
  type        = string
}

variable "team" {
  description = "Equipo al que pertenece quien esta creado la infraestructura"
  type        = string
}

variable "project" {
  description = "Nombre del proyecto que se esta ejecutando"
  type        = string
}