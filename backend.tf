terraform {
  required_version = ">= 1.4.0"

  cloud {
    organization = "tf-omerops"

    workspaces {
      name = "connect-terraform-iac"
    }
  }
}
