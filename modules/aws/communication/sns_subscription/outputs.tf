output "subscription_arn" {
  description = "ARN da assinatura SNS"
  value       = aws_sns_topic_subscription.this.arn
}