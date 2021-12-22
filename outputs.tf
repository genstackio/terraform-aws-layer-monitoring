output "dashboards" {
  value = {for k, d in aws_cloudwatch_dashboard.dashboard: k => {arn: d.arn}}
}