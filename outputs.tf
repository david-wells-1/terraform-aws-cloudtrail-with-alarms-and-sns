output "cloudtrail_id" {
  value       = aws_cloudtrail.cloudtrail_default.id
  description = "The id of the created Trail"
}

output "cloudtrail_home_region" {
  value       = aws_cloudtrail.cloudtrail_default.home_region
  description = "The region in which the Trail is created"
}

output "cloudtrail_arn" {
  value       = aws_cloudtrail.cloudtrail_default.arn
  description = "The arn of the created Trail"
}

output "cloudtrail_logs_arn" {
  value       = aws_cloudwatch_log_group.log_group_default.arn
  description = "The arn of the created Log Group"
}

output "cloudtrail_sns_arn" {
  value       = aws_sns_topic.sns_topic_default.arn
  description = "The arn of the created SNS Topic"
}

output "cloudtrail_bucket_id" {
  value       = aws_s3_bucket.cloudtrail_bucket.id
  description = "The id of  the created S3 bucket used by CloudTrail"
}

output "cloudtrail_bucket_arn" {
  value       = aws_s3_bucket.cloudtrail_bucket.arn
  description = "The arn of  the created S3 bucket used by CloudTrail"
}
