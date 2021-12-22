resource aws_cloudwatch_dashboard "dashboard" {
  for_each       = toset(var.dashboards)
  dashboard_name = each.key
  dashboard_body = lookup(each.value, "definition", "{}")
}