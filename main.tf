module "vpc_test" {
  source = "./modules/vpc_module"

  vpc_cidr_block   = var.vpc_cidr
  pub_subnets_cidr = var.public_subnets_cidr
  priv_subnets_cidr = var.private_subnets_cidr

  vpc_name = var.instance_name
  ## Tags
  environment = var.environment
  owner       = var.owner
  team        = var.team
  project     = var.project
}

module "ec2_sg" {
  source = "./modules/ec2_security_group_module"

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
  description = "id subredes publicas"
  value       = module.vpc_test.public_subnet_id_us_east_1a
}

output "vpc_sub_pub_ids" {
  description = "id subredes publicas"
  value       = module.vpc_test.public_subnets_ids
}

output "vpc_sub_priv_id" {
  description = "id subredes privadas"
  value       = module.vpc_test.private_subnet_id_us_east_1a
}

module "rds_test" {
  source = "./modules/rds_module"

  db_identifier = var.db_identifier
  db_storage = var.db_storage
  db_engine = var.db_engine
  db_engine_version = var.db_engine_version

  rds_instance_type = var.rds_instance_type

  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password

  environment = var.environment
  owner = var.owner
  team = var.team
  project = var.project
}