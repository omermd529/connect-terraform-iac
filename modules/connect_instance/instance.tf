
resource "aws_connect_instance" "tf_iac_instance" {
  identity_management_type = "CONNECT_MANAGED"
  inbound_calls_enabled    = true
  instance_alias           = "tf-iac-demo"
  outbound_calls_enabled   = true
  contact_flow_logs_enabled = true

  tags = {
    "env" = "demo"
  }
}