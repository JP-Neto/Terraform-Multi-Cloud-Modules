resource "aws_cloudwatch_event_target" "this" {
  rule      = var.rule_name
  target_id = var.target_id
  arn       = var.lambda_function_arn
}