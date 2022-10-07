variable "region" {
  default = "us-east-1"

}
variable "vpc_id" {
default = "vpc-cd8735b7"
}

variable "azs" {
  default = [ "us-east-1a", "us-east-1b", "us-east-1c"]
}