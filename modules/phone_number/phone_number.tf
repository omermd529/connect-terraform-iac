resource "aws_connect_phone_number" "phone_number" {
  target_arn   = var.target_arn // Required
  country_code = var.country_code// Required
  type         = var.type // Required
  description  = var.description // Optional
  prefix       = var.phone_number_prefix
  lifecycle {
    ignore_changes = all
    }
}