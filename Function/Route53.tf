resource "aws_route53_record" "roboshop" {
  count=length(var.instances)
  zone_id = var.zone_id
  name    ="${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
}


# resource "aws_route53_record" "frontend" {
#   count=1
#   zone_id = var.zone_id
#   name    ="${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.terraform[count.index].public_ip]
#   allow_overwrite = true
