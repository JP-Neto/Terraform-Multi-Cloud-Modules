variable "db_instance_identifier" {}
variable "db_name" {}
variable "engine" {}
variable "db_engine_version" {}
variable "db_instance_class" {}
variable "db_allocated_storage" {}
variable "db_username" {}
variable "db_password" {}
variable "db_subnet_group_name" {}
variable "parameter_group_name" {}
variable "vpc_security_group_ids" { type = list(string) }
variable "publicly_accessible" { type = bool }
variable "skip_final_snapshot" { type = bool }
variable "db_deletion_protection" { type = bool }
variable "db_storage_encrypted" { type = bool }
variable "tags" { type = map(string) }