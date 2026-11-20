resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name        = "terraform-ec2-high-cpu-alarm"
  alarm_description = "Detects high EC2 CPU utilization"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  threshold           = 80

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"
  period      = 300
  statistic   = "Average"

  dimensions = {
    InstanceId = var.ec2_instance_id
  }

  treat_missing_data = "missing"

  tags = {
    Project     = "terraform-aws-cloudwatch-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
