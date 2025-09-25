terraform {
  cloud {
    organization = "YOUR_TF_CLOUD_ORG"

    workspaces {
      name = "terraformcluster"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
