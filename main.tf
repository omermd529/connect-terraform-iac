# Instance Creation
module "Instance" {
  source                   = "./modules/connect_instance"
  identity_management_type = "CONNECT_MANAGED"
  system_name = var.system_name
  environment_region = var.environment_region
  environment_type = var.environment_type
}


module "phone_number" {
  source       = "./modules/phone_number"
  target_arn   = module.Instance.instance_arn
  country_code = var.country_code
  type         = var.phone_number_type
  phone_number_prefix = var.phone_number_prefix
  description = var.phone_number_description
  depends_on = [ module.Instance ]
}