variable "instance_type" {
  type = map
  
  default = {
   default = "t2.nano"
   stage = "t2.micro"
   prod = "t2.large"
  }
}


variable "region" {
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

variable "ami" {
  default     = "ami-0b20b0e5731e0986a"
}


