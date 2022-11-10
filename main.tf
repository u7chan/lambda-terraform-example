provider "aws" {
  region = var.aws_region
}

resource "aws_lambda_function" "local_zipfile" {

  filename         = var.function_zipfile
  source_code_hash = filemd5("${var.function_zipfile}")

  description   = "${var.comment_prefix}${var.api_domain}"
  function_name = var.function_name
  handler       = var.function_handler
  runtime       = var.function_runtime
  timeout       = var.function_timeout
  memory_size   = var.memory_size
  role          = var.function_arn
  tags          = var.tags
}