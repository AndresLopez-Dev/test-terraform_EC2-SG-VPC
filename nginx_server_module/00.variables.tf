### Variables

variable "ami_id" {
  description = "ID de la AMI"
  default     = "ami-08a0d1e16fc3f61ea"
}

variable "instance_type" {
  description = "Tipo de instancia para el EC2"
  default     = "t2.micro"
}

variable "instance_sg_id" {
  description = "sg de la instancia"
}

## TAGS
variable "instance_name" {
  description = "Nombre de la instancia"
  type = string
  default     = "nginx-server"
}

variable "environment" {
  description = "Ambiente de la aplicacion"
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

variable "instance_subnet_id" {
  description = "subred de la instancia"
}

