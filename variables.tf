
variable "zone_name" {
  description = "Zone name"
  default     = ""
}


variable "record_name" {
  description = "The recorde name"
  default     = ""
}


variable "lb_dns_name" {
  description = "A load balancer DNS name"
  default     = ""
}

variable "lb_zone_id" {
  description = "A load balancer zone id"
  default     = ""
}
