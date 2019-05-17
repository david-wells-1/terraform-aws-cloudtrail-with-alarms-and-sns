resource "aws_cloudtrail" "cloudtrail_default" {
  name                       = "${var.cloudtrail_name}"
  is_multi_region_trail      = "${var.multi_region_trail}"
  s3_bucket_name             = "${aws_s3_bucket.cloudtrail_bucket.id}"
  enable_logging             = "${var.enable_logging}"
  enable_log_file_validation = "${var.enable_log_file_validation}"
  cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.log_group_default.arn}"
  cloud_watch_logs_role_arn  = "${aws_iam_role.cloudtrail_role.arn}"
}

resource "aws_cloudwatch_log_group" "log_group_default" {
  name = "${var.cloudwatch_log_group}"
}

resource "aws_sns_topic" "sns_topic_default" {
  name   = "${var.sns_topic}"
  policy = "${data.aws_iam_policy_document.cloudtrail_alarm_policy.json}"
}

resource "aws_s3_bucket" "cloudtrail_bucket" {
  bucket = "${var.bucket_name}"
  policy = "${data.aws_iam_policy_document.cloudtrail_bucket.json}"
}

resource "aws_iam_role" "cloudtrail_role" {
  name               = "${var.cloudtrail_name}-role"
  assume_role_policy = "${data.aws_iam_policy_document.cloudtrail_assume_policy.json}"
}

resource "aws_iam_policy" "cloudtrail_access_policy" {
  name   = "${var.cloudtrail_name}-policy"
  policy = "${data.aws_iam_policy_document.cloudtrail_policy.json}"
}

resource "aws_iam_policy_attachment" "cloudtrail_access_policy_attachment" {
  name       = "${var.cloudtrail_name}-policy-attachment"
  policy_arn = "${aws_iam_policy.cloudtrail_access_policy.arn}"
  roles      = ["${aws_iam_role.cloudtrail_role.name}"]
}
