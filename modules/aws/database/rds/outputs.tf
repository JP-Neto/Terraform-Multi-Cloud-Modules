output "rds_address" {
  description = "O hostname da instancia RDS"
  value       = aws_db_instance.this.address
}

output "rds_endpoint" {
  description = "O endpoint de conexao (address:port)"
  value       = aws_db_instance.this.endpoint
}

output "rds_port" {
  description = "A porta do banco de dados"
  value       = aws_db_instance.this.port
}