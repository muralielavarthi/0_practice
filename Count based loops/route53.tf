resource "aws_route53_record" "frontend" {
  zone_id         = var.zone-id
  name            = var.domain-name
  records         = [aws_instance.expense-project[0].public_ip]
  type            = "A"
  ttl             = 1
  allow_overwrite = true
}
resource "aws_route53_record" "back-end" {
  count           = length(var.instances)
  zone_id         = var.zone-id
  name            = "${var.instances[1]}.${var.domain-name}"
  records         = [aws_instance.expense-project[1].private_ip]
  type            = "A"
  ttl             = 1
  allow_overwrite = true
}
resource "aws_route53_record" "database" {
  count           = length(var.instances)
  zone_id         = var.zone-id
  name            = "${var.instances[2]}.${var.domain-name}"
  records         = [aws_instance.expense-project[2].private_ip]
  type            = "A"
  ttl             = 1
  allow_overwrite = true
}




