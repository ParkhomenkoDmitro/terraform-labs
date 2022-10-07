terraform {
  required_version = "1.3.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
	region = "eu-central-1"
	profile = "personal"
}