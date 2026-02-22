data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = var.source_file
  output_path = "${path.module}/lambda_function.zip"
}

resource "aws_lambda_function" "this" {
  filename         = data.archive_file.lambda_zip.output_path
  function_name    = var.function_name
  role             = var.role_arn
  handler          = "index2.lambda_handler" 
  runtime          = "python3.12"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  timeout          = 30

  environment {
    variables = {
      SNS_TOPIC_ARN = var.sns_topic_arn
      CLUSTER_NAME  = var.cluster_name
      SERVICE_NAME  = var.service_name
    }
  }

  tags = var.tags
}