variable "name" {
  type    = string
  default = "monitoring"
}
variable "dashboards" {
  type = map(object({
    definition = string
  }))
  default = {}
}