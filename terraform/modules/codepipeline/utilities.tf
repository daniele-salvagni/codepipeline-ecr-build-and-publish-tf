resource "random_string" "random" {
  length  = 2
  lower   = true
  upper   = false
  special = false
  numeric = false
}
