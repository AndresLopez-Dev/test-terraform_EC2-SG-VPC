### Variables

variable "ami_id" {
  description = "ID de la AMI"
  default     = "ami-08a0d1e16fc3f61ea"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia para el EC2"
  default     = "t2.micro"
  type        = string
}

variable "instance_sg_id" {
  description = "sg de la instancia"
  type        = string
}

variable "instance_code" {
  description = "Insercion de codigo en la EC2"
}

## TAGS
variable "instance_name" {
  description = "Nombre de la instancia"
  default     = "nginx-server"
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

variable "instance_subnet_id" {
  description = "subred de la instancia"
  type        = string
}

