resource "aws_route53_record" "spoke3_FGT_Public_DNS" {
  provider = aws.spoke_3_vpc
  zone_id = var.Public_SubHosted_Zone_id
  name    = "FGT-spoke3"
  type    = "A"
  ttl     = "10"
  records = [aws_eip.spoke_3_WAN1.public_ip, aws_eip.spoke_3_WAN2.public_ip]
}

resource "time_sleep" "wait_15_seconds_Public" {
  depends_on      = [aws_route53_record.spoke3_FGT_Public_DNS]
  create_duration = "15s"
}

resource "aws_route53_record" "spoke3_Linux_Public" {
  provider = aws.spoke_3_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "linux-spoke3"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke3_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}


resource "aws_route53_record" "spoke3_WebServer_Public" {
  provider = aws.spoke_3_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "WebServer-spoke3"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke3_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spoke3_Windows_Public" {
  provider = aws.spoke_3_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "Windows-spoke3"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke3_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}