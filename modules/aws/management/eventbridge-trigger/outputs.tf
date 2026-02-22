output "event_rule_arn" {
  description = "ARN da regra criada no EventBridge"
  value       = aws_cloudwatch_event_rule.this.arn
}

output "event_rule_name" {
  description = "Nome da regra criada no EventBridge"
  value       = aws_cloudwatch_event_rule.this.name
}