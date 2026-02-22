resource "aws_cloudwatch_event_rule" "this" {
  name        = var.rule_name
  description = var.description
  event_pattern = jsonencode({
    source      = ["aws.ecr"]
    detail_type = ["ECR Image Action"]
    detail = {
      action_type     = ["PUSH"]
      result          = ["SUCCESS"]
      repository-name = [var.repository_name]
    }
  })

  tags = var.tags
}