resource "aws_security_group" "webserver_sg" { 
  name="webserver_sg-${var.environment}"
}

resource "aws_security_group_rule" "allow_http" {
        type="ingress"
        security_group_id = aws_security_group.webserver_sg.id
        from_port = var.http_port
        to_port = var.http_port
        protocol = "tcp"
        cidr_blocks = [ var.my_system ]
} 
