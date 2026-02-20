resource "aws_db_instance" "this" {
  identifier           = var.db_instance_identifier
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  allocated_storage    = var.db_allocated_storage
  username             = var.db_username
  password             = var.db_password
  
  db_subnet_group_name   = var.db_subnet_group_name
  parameter_group_name   = var.parameter_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  
  publicly_accessible    = var.publicly_accessible
  skip_final_snapshot    = var.skip_final_snapshot
  deletion_protection    = var.db_deletion_protection
  storage_encrypted      = var.db_storage_encrypted

  tags = var.tags
}