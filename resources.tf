resource "aws_route53_zone" "rotem-site-zone" {
  name         = "${var.zone_name}"
}

resource "aws_route53_record" "www-record" {
  zone_id = "${aws_route53_zone.rotem-site-zone.zone_id}"
  name    = "www"
  type    = "CNAME"
  ttl     = "60"
  records = ["${var.lb_dns_name}"]
}


#We can also use A type instead of CNAME : https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html
/*
resource "aws_route53_record" "www-record" {
  zone_id = "${aws_route53_zone.rotem-site-zone.zone_id}"
  name    = "www"
  type    = "A"

  alias{
    name                   = "${var.lb_dns_name}"
    zone_id                = "${var.lb_zone_id}"
    evaluate_target_health = true
  }
}
*/




