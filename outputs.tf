output "cloudwatch_alarm_name" {
  description = "CloudWatch alarm name."
  value       = aws_cloudwatch_metric_alarm.cpu_high.alarm_name
}

output "cloudwatch_alarm_arn" {
  description = "CloudWatch alarm ARN after deployment."
  value       = aws_cloudwatch_metric_alarm.cpu_high.arn
}
