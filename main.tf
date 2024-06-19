module "vpc_test" {
  source = "./modules/vpc_module"

  vpc_cidr_block   = var.vpc_cidr
  pub_subnets_cidr = var.public_subnets_cidr

  vpc_name = var.instance_name
  ## Tags
  environment = var.environment
  owner       = var.owner
  team        = var.team
  project     = var.project
}

module "ec2_sg" {
  source = "./modules/security_group_module"

  sg_name = var.instance_name
  vpc_id  = module.vpc_test.vpc_id
  ## Tags
  environment = var.environment
  owner       = var.owner
  team        = var.team
  project     = var.project
}


module "ec2_test" {
  source = "./modules/ec2_module"

  ### Variables
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  instance_subnet_id = module.vpc_test.public_subnet_id_us_east_1a
  instance_sg_id     = module.ec2_sg.sg_id
  instance_code      = var.instance_code

  instance_name = var.instance_name
  ## Tags
  environment = var.environment
  owner       = var.owner
  team        = var.team
  project     = var.project
}

output "nginx_test_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.ec2_test.public_ip
}

output "vpc_sub_pub_id" {
  description = "id subredes"
  value       = module.vpc_test.public_subnet_id_us_east_1a
}

output "vpc_sub_pub_ids" {
  description = "id subredes"
  value       = module.vpc_test.public_subnets_ids
}