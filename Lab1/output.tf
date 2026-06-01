output "app_name" {
  value = var.app_name
}
output "envi_name" {
  value = var.envi_name
}
output "envi_prefix" {
  value = local.envi_prefix
}
output "sufixx" {
  value = random_string.suffix.result
}
output "api_key" {
  value     = "${var.api_key}bar"
  sensitive = true
}
