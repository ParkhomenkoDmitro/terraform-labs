resource "aws_instance" "jenkins" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = "us-east-1-key"
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.allow_login.id]
  tags = {
    Name = var.project
    OS   = "ubuntu"
  }
  user_data = <<EOC
#!/bin/bash -xe
exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console)
exec 2>&1
/usr/bin/apt update
/usr/bin/apt install openjdk-11-jdk -y
/usr/bin/wget -p -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
/bin/sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
/usr/bin/apt update
/usr/bin/apt install jenkins -y
/bin/systemctl status jenkins
/usr/sbin/ufw allow 8080
/usr/sbin/ufw status
/usr/bin/apt install python3-pip -y
pip3 install awscli
apt install unzip
wget -q https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip
unzip terraform_0.11.6_linux_amd64.zip
mv terraform /usr/local/bin/terraform
terraform version
echo "#########   all commands executed successfuly !! ########## "
EOC
}
