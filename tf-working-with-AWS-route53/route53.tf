resource "aws_route53_zone" "my_private_zone" {
  name = "goal.com"

  vpc {
    vpc_id = "vpc-ea685481"
  }
}

resource "aws_route53_record" "webserver" {
  zone_id = aws_route53_zone.my_private_zone.zone_id
  name    = "web.goal.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.hellow-world.private_ip}"]
}
