resource aws_cloudwatch_dashboard "dashboard" {
  for_each       = {for k, v in var.dashboards: k => v}
  dashboard_name = each.key
  dashboard_body = lookup(each.value, "definition", "{}")
}