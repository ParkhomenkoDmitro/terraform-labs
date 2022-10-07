terraform {
  backend "s3" {
    # encrypt        = true
    bucket         = "parkhomenko-terraform"
    key            = "test/terraform.tfstate"
    region = "eu-central-1"
    profile = "personal"
    dynamodb_table = "terraform-state"
  }
}
