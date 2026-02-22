resource "aws_lambda_permission" "this" {
  statement_id  = var.statement_id
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_function_name
  principal     = "events.amazonaws.com"
  source_arn    = var.event_rule_arn
}