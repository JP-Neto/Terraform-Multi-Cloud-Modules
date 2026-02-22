output "sns_topic_arn" {
  description = "ARN do tópico SNS criado"
  value       = aws_sns_topic.this.arn
}

output "sns_topic_name" {
  description = "Nome do tópico SNS"
  value       = aws_sns_topic.this.name
}