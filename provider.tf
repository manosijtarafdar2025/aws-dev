terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "manosij-prd"
    workspaces {
      name = "aws-dev"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}