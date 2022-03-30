resource "aws_route53_record" "spoke4_FGT_Public_DNS" {
  provider = aws.spoke_4_vpc
  zone_id = var.Public_SubHosted_Zone_id
  name    = "FGT-spoke4"
  type    = "A"
  ttl     = "10"
  records = [aws_eip.spoke_4_WAN1.public_ip, aws_eip.spoke_4_WAN2.public_ip]
}

resource "time_sleep" "wait_15_seconds_Public" {
  depends_on      = [aws_route53_record.spoke4_FGT_Public_DNS]
  create_duration = "15s"
}

resource "aws_route53_record" "spoke4_Linux_Public" {
  provider = aws.spoke_4_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "linux-spoke4"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke4_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}


resource "aws_route53_record" "spoke4_WebServer_Public" {
  provider = aws.spoke_4_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "WebServer-spoke4"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke4_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spoke4_Windows_Public" {
  provider = aws.spoke_4_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "Windows-spoke4"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke4_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}