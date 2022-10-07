variable "region" {
  default = "eu-central-1"
}
variable "http_port" {
  default = 80
}
variable "ssh_port" {
  default = 22
}

variable "ami" {
  default = "ami-043097594a7df80ec"
}

variable "my_system" {
    default = "176.37.138.80/32"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "az" {
  default = "eu-central-1a"
}


