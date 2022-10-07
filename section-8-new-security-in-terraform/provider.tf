terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
	region = "eu-central-1"
	profile = "terraform-lessons" 
  assume_role {
    role_arn = "arn:aws:iam::827474115600:role/user-can-assume-role"
    session_name = "my-role-session"
    
  }
}
