output "dns_name_servers" {
  value = "${aws_route53_zone.rotem-site-zone.name_servers}"
}