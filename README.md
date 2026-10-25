# Terraform module for AWS CloudTrail with CloudWatch Alarms and an SNS Topic

This terraform module will create an AWS CloudTrail which is configuredto create an S3 bucket and which also streams logs to a CloudWatch Log Group. Eleven CloudWatch alarms are created with alarm notifications sent to a created SNS Topic.

**Remember to subscribe to the SNS Topic**

<!-- BEGIN_TF_DOCS -->

## Requirements

## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0.0 |

## Modules



## Inputs

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the s3 bucket to be created | `string` | n/a | yes |
| <a name="input_cloudtrail_name"></a> [cloudtrail\_name](#input\_cloudtrail\_name) | Specifies the name of the trail | `string` | n/a | yes |
| <a name="input_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#input\_cloudwatch\_log\_group) | The name of the log group to be created | `string` | n/a | yes |
| <a name="input_enable_log_file_validation"></a> [enable\_log\_file\_validation](#input\_enable\_log\_file\_validation) | Specifies whether log file integrity validation is enabled | `bool` | `true` | no |
| <a name="input_enable_logging"></a> [enable\_logging](#input\_enable\_logging) | Enables logging for the trail | `bool` | `true` | no |
| <a name="input_multi_region_trail"></a> [multi\_region\_trail](#input\_multi\_region\_trail) | Specifies whether the trail is created in the current region or in all regions | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS regions where resources are created | `string` | n/a | yes |
| <a name="input_sns_topic"></a> [sns\_topic](#input\_sns\_topic) | The friendly name for the SNS topic to be created | `string` | n/a | yes |

## Outputs

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cloudtrail_arn"></a> [cloudtrail\_arn](#output\_cloudtrail\_arn) | The arn of the created Trail |
| <a name="output_cloudtrail_bucket_arn"></a> [cloudtrail\_bucket\_arn](#output\_cloudtrail\_bucket\_arn) | The arn of  the created S3 bucket used by CloudTrail |
| <a name="output_cloudtrail_bucket_id"></a> [cloudtrail\_bucket\_id](#output\_cloudtrail\_bucket\_id) | The id of  the created S3 bucket used by CloudTrail |
| <a name="output_cloudtrail_home_region"></a> [cloudtrail\_home\_region](#output\_cloudtrail\_home\_region) | The region in which the Trail is created |
| <a name="output_cloudtrail_id"></a> [cloudtrail\_id](#output\_cloudtrail\_id) | The id of the created Trail |
| <a name="output_cloudtrail_logs_arn"></a> [cloudtrail\_logs\_arn](#output\_cloudtrail\_logs\_arn) | The arn of the created Log Group |
| <a name="output_cloudtrail_sns_arn"></a> [cloudtrail\_sns\_arn](#output\_cloudtrail\_sns\_arn) | The arn of the created SNS Topic |
<!-- END_TF_DOCS -->