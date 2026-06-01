
resource "random_string" "suffix" {
  length = 6
}

locals {
  envi_prefix = "${var.app_name}-${var.envi_name}-${random_string.suffix.result}"
}
