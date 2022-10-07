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
    default = "98.207.180.245/32"
}

variable "ami" {
  default = "ami-043097594a7df80ec"
}

variable "instance_type" {
  default = "t2.micro"
}

