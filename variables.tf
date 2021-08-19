variable "region" {
  type        = string
  description = "The AWS regions where resources are created"
}

variable "cloudtrail_name" {
  type        = string
  description = "Specifies the name of the trail"
}

variable "multi_region_trail" {
  default     = false
  description = "Specifies whether the trail is created in the current region or in all regions"
}

variable "enable_logging" {
  default     = true
  description = "Enables logging for the trail"
}

variable "enable_log_file_validation" {
  default     = true
  description = "Specifies whether log file integrity validation is enabled"
}

variable "cloudwatch_log_group" {
  type        = string
  description = "The name of the log group to be created"
}

variable "sns_topic" {
  type        = string
  description = "The friendly name for the SNS topic to be created"
}

variable "bucket_name" {
  type        = string
  description = "The name of the s3 bucket to be created"
}
