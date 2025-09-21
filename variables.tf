variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "identity_management_type" {
  type = string
  description = "identity management type attached to the instance."
}

variable "environment_region"{
    type = string
    description = "accepted values are uswest2, useast1"
    default = "us-west-2"
}


variable "environment_type" {
  type = string
  default = "demo"
}

variable "system_name" {
  type = string
  default = "tf-iac-connect-demo"
}

# phone number variables

variable "country_code" {
  type        = string
  description = " The ISO country code"
}

variable "phone_number_type" {
  type    = string
  description  = "The type of phone number. Valid Values: TOLL_FREE | DID"
}

variable "phone_number_prefix" {
  type = string
  description = "The prefix of the phone number that is used to filter available phone numbers. If provided, it must contain + as part of the country code. Do not specify this argument when importing the resource"
}

variable "phone_number_description" {
  type        = string
  description = "The description of the phone number."
}