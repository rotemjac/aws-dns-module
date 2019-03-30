# aws-dns-module
A small DNS module with AWS Route53.

```
module "DNS" {
  source      = "https://github.com/rotemjac/aws-dns-module"
  zone_name   = "Your-hosted-zone-name"
  record_name = "For example: www or app"

  //Take this variables from the load balancer
  lb_dns_name = "${aws_alb.my-alb.dns_name}"
  lb_zone_id  = "${aws_alb.my-alb.zone_id}"
}
```
