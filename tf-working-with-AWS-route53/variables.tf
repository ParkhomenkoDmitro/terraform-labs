variable "region" {
  description = " it will define the AWS region "
  default     = "eu-central-1"
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


variable "instance_type" {
  default = "t2.micro"
}

variable "az" {
  default="eu-central-1a"
}

variable "ami" {
  description = "amazon machine image"
  default     = "ami-0b20b0e5731e0986a"
}