resource "aws_sns_topic" "this" {
  name = var.sns_topic_name
  tags = var.tags
}