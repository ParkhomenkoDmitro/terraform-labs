resource "aws_instance" "hello-world" {

 ami = "ami-043097594a7df80ec"
 instance_type = "t3.micro"
 key_name = "terraform"
 tags = {
	 Name = "Hello world"
 }

}