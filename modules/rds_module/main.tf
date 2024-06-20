resource "aws_db_instance" "rds_instance" {
  identifier = var.db_identifier

  allocated_storage = var.db_storage
  
  engine = var.db_engine
  engine_version = var.db_engine_version
  
  instance_class = var.rds_instance_type
  
  db_name = var.db_name
  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
  
  tags = {
    Name       = var.db_identifier
    Enviroment = var.environment
    Owner      = var.owner
    Team       = var.team
    Project    = var.project
  }
}