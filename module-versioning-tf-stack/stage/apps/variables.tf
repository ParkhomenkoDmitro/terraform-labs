variable "region" {
  default = "eu-central-1"

}
variable "vpc_id" {
  default = "vpc-ea685481"
}

variable "azs" {
  default = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "ami" {
  default = "ami-043097594a7df80ec"
}

variable "my_system" {
    default = "176.37.138.80/32"
}