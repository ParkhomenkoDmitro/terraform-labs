terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "vpc-subnet-nat-igw-tfstate"
    key            = "stage_vpc/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state"
    profile = "personal"
  }
}
