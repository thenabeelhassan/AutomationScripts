provider "aws" {
    access_key = "<access key>"
    secret_key = "<secret key>"
    region = "us-east-1"
}

variable "logs_path" {
  description = "Path of the logs in CloudWatch"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}

variable "log_group_retention_in_days" {
  description = "(Optional) Specifies the number of days you want to retain log events in the specified log group. Default to 30 days"
  type        = number
  default     = 30
}

variable "log_group_kms_key_id" {
  description = "The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested."
  default     = ""
}

resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.logs_path
  retention_in_days = var.log_group_retention_in_days
  kms_key_id        = var.log_group_kms_key_id
  tags              = var.tags
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = var.logs_path
  log_group_name = aws_cloudwatch_log_group.log_group.name
}

output "logs_path" {
  description = "Path of the logs in CloudWatch"
  value       = var.logs_path
}

output "log_group_name" {
  description = "The name of the log group."
  value       = aws_cloudwatch_log_group.log_group.name
}

output "log_group_retention_in_days" {
  description = "Specifies the number of days log events are retained"
  value       = aws_cloudwatch_log_group.log_group.retention_in_days
}

output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = aws_cloudwatch_log_group.log_group.arn
}

output "log_stream_name" {
  description = "The name of the log stream."
  value       = aws_cloudwatch_log_stream.log_stream.name
}

output "log_stream_log_group_name" {
  description = "The name of the log group under which the log stream was created"
  value       = aws_cloudwatch_log_stream.log_stream.log_group_name
}

output "log_stream_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log stream."
  value       = aws_cloudwatch_log_stream.log_stream.arn
}
