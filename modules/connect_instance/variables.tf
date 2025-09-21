variable "identity_management_type" {
  type = string
  description = "identity management type attached to the instance."
}

variable "environment_region"{
    type = string
    description = "accepted values are uswest2, useast1,ap-southeast-1"
    default = "ap-southeast-1"
}


variable "environment_type" {
  type = string
  default = "demo"
}

variable "system_name" {
  type = string
  default = "tf-iac-connect-demo"
}