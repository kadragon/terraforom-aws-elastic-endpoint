# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
resource "aws_route53_zone" "elastic_private_zone" {
  name = var.phsd_service

  vpc {
    vpc_id = var.vpc_id
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
resource "aws_route53_record" "elastic-private-zone-recode" {
  zone_id = aws_route53_zone.elastic_private_zone.zone_id
  name    = "*"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_vpc_endpoint.elastic_endpoint.dns_entry[0]["dns_name"]]
}
