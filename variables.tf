variable "aws_region" {
  default     = "ap-northeast-1"
  description = "The AWS region to create things in."
}

variable "tags" {
  description = "AWS Tags to add to all resources created (where possible); see https://aws.amazon.com/answers/account-management/aws-tagging-strategies/"
  type        = map(string)
  default     = {}
}

variable "api_domain" {
  default     = "api.example.com"
  description = "Domain on which the Lambda will be made available (e.g. `\"api.example.com\"`)"
}

variable "comment_prefix" {
  description = "This will be included in comments for resources that are created"
  default     = "Lambda API: "
}

variable "function_zipfile" {
  default     = "./example-project/dist.zip"
  description = "Path to a ZIP file that will be installed as the Lambda function (e.g. `\"my-api.zip\"`)"
}

variable "function_name" {
  default = "example-func"
}

variable "function_handler" {
  description = "Instructs Lambda on which function to invoke within the ZIP file"
  default     = "index.handler"
}

variable "function_timeout" {
  description = "The amount of time your Lambda Function has to run in seconds"
  default     = 3
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime"
  default     = 128
}

variable "function_arn" {
  description = "The ARN used by the lambda function"
}

variable "function_runtime" {
  description = "Which node.js version should Lambda use for this function"
  default     = "nodejs16.x"
}
