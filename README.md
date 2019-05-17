# Terraform module for AWS CloudTrail with CloudWatch Alarms and an SNS Topic

This terraform module will create an AWS CloudTrail which is configured with an S3 bucket and which also streams logs to a CloudWatch Log Group. Eleven CloudWatch alarms are created with alarm notifications sent to a created SNS Topic.

**Remember to subscribe to the SNS Topic**

## Module Input Variables

* `region` - The AWS region where the resources are to be created
* `cloudtrail_name` - Specifies the name of the cloudtrail
* `cloudwatch_log_group` - The name of the created Log Group
* `sns_topic` - The friendly name for the created SNS topic
* `bucket_name` - The name of the S3 bucket used by CloudTrail

## Usage

```
module "cloudtrail" {
  source = "git::https://github.com/david-wells-1/terraform-aws-module-cloudtrail.git"

  region                     = "${var.region}" 
  cloudtrail_name            = "${var.cloudtrail_name}"
  multi_region_trail         = true
  enable_logging             = true
  enable_log_file_validation = true
  cloudwatch_log_group       = "${var.cloudwatch_log_group}"
  sns_topic                  = "${var.sns_topic}"
  bucket_name                = "${var.bucket_name}"
}
```
## CloudWatch Alarms

Alarms are created and sent to the SNS Topic when the following activity is detected:

* `CloudTrailS3BucketActivity`
* `CloudTrailSecurityGroupChanges`
* `CloudTrailNetworkAclChanges`
* `CloudTrailGatewayChanges`
* `CloudTrailVpcChanges`
* `CloudTrailEC2InstanceChanges`
* `CloudTrailEC2LargeInstanceChanges`
* `CloudTrailChanges`
* `CloudTrailConsoleSignInFailures`
* `CloudTrailAuthorizationFailures`
* `CloudTrailIAMPolicyChanges`

## Author

Module managed by [David Wells](https://github.com/david-wells-1)