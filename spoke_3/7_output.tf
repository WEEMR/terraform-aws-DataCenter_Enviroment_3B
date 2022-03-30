output "spoke_3_WAN1" {
  value       = aws_eip.spoke_3_WAN1.public_ip
}

output "spoke_3_WAN2" {
  value       = aws_eip.spoke_3_WAN2.public_ip
}

output "spoke3_FGT_DNS_Name" {
  value = aws_route53_record.spoke3_FGT_Public_DNS.fqdn
}

output "spoke3_Linux_DNS_Name" {
  value = aws_route53_record.spoke3_Linux_Public.fqdn
}

output "spoke3_WebServer_Public" {
  value = aws_route53_record.spoke3_WebServer_Public.fqdn
}

output "spoke3_Windows_Public" {
  value = aws_route53_record.spoke3_Windows_Public.fqdn
}

output "spoke3_Windows_Password" {
  value = aws_instance.spoke_3_WinSrv.password_data
}