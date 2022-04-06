provider "aws" {
    access_key = "<access key>"
    secret_key = "<secret key>"
    region = "us-east-1"
}

variable "create" {
  description = "Whether to create the Cloudwatch log group"
  type        = bool
  default     = true
}

variable "name" {
  description = "A name for the log group"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "A name prefix for the log group"
  type        = string
  default     = null
}

variable "retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  type        = number
  default     = null
}

variable "kms_key_id" {
  description = "The ARN of the KMS Key to use when encrypting logs"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to Cloudwatch log group"
  type        = map(string)
  default     = {}
}

resource "aws_cloudwatch_log_group" "<name>" {

  count = var.create ? 1 : 0

  name = var.name
  name_prefix = var.name_prefix
  retention_in_days = var.retention_in_days
  kms_key_id = var.kms_key_id

  tags = var.tags
}

output "cloudwatch_log_group_name" {
  description = "Name of Cloudwatch log group"
  value       = element(concat(aws_cloudwatch_log_group.this.*.name, [""]), 0)
}

output "cloudwatch_log_group_arn" {
  description = "ARN of Cloudwatch log group"
  value       = element(concat(aws_cloudwatch_log_group.this.*.arn, [""]), 0)
}