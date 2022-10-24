resource "aws_instance" "hello-world" {
  ami           = "ami-043097594a7df80ec"
  instance_type = "t2.nano"
  key_name      = "new-terraform"
  tags = {
    Name = "Hello world"
  }
}