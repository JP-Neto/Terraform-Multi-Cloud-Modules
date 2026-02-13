output "igw_id" {
  description = "O ID do Internet Gateway criado para a VPC."
  value       = aws_internet_gateway.this.id
}

output "igw_arn" {
  description = "O ARN do Internet Gateway."
  value       = aws_internet_gateway.this.arn
}