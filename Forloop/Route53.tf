resource "aws_route53_record" "roboshop" {
  for_each=aws_instance.terraform
  zone_id = var.zone_id
  name    ="${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
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
