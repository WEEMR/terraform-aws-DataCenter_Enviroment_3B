resource "aws_route53_record" "spoke2_FGT_Public_DNS" {
  provider = aws.spoke_2_vpc
  zone_id = var.Public_SubHosted_Zone_id
  name    = "FGT-spoke2"
  type    = "A"
  ttl     = "10"
  records = [aws_eip.spoke_2_WAN1.public_ip, aws_eip.spoke_2_WAN2.public_ip]
}

resource "time_sleep" "wait_15_seconds_Public" {
  depends_on      = [aws_route53_record.spoke2_FGT_Public_DNS]
  create_duration = "15s"
}

resource "aws_route53_record" "spoke2_Linux_Public" {
  provider = aws.spoke_2_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "linux-spoke2"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke2_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}


resource "aws_route53_record" "spoke2_WebServer_Public" {
  provider = aws.spoke_2_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "WebServer-spoke2"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke2_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "spoke2_Windows_Public" {
  provider = aws.spoke_2_vpc
  depends_on = [time_sleep.wait_15_seconds_Public]
  zone_id = var.Public_SubHosted_Zone_id
  name       = "Windows-spoke2"
  type       = "A"

  alias {
    name                   = aws_route53_record.spoke2_FGT_Public_DNS.fqdn
    zone_id                = var.Public_SubHosted_Zone_id
    evaluate_target_health = true
  }
}