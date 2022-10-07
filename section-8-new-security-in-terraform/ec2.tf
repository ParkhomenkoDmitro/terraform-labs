resource "aws_instance" "hello-world" {

 ami = "ami-043097594a7df80ec"
 instance_type = "t3.micro"
 key_name = "new-terraform"
 tags = {
	 Name = "Hello world"
 }

}

locals {
  
}

locals {
  service_name = "forum"
  owner        = "Community Team"
  

  
}
