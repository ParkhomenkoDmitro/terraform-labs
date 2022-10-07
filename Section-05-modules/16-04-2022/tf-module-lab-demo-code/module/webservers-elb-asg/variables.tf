variable "environment" {
  description = "type of environment , prod or stg or dev "
  default     = "stg"
}

variable "vpc_id" {
  description = "provide vpc_id"
}

variable "instance_type" {
  description = "instance type ..."
  default     = "t2.nano"
}

variable "cluster" {

}

variable "region" {
  default = "eu-central-1"
}

variable "http_port" {
  default = 80
}

variable "ssh_port" {
  default = 22
}

variable "my_system" {
  default = "176.37.138.80/32"
}

variable "ami" {
  default = "ami-0b20b0e5731e0986a"
}

variable "azs" {
  default = ["eu-central-1a", "eu-central-1b"]
}
