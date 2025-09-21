terraform {
  # Require Terraform v1.13.3 or higher
  required_version = ">= 1.13.3"

  # Use Terraform Cloud for state management
  cloud {
    organization = "tf-omerops"   # 👈 your Terraform Cloud org name

    workspaces {
      name = "connect-terraform-iac"   # 👈 your workspace name
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"   # use a stable AWS provider version
    }
  }
}

provider "aws" {
  region = "us-east-1"   # 👈 change to your desired AWS region
}
