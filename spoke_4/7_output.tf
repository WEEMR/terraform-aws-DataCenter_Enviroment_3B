output "spoke_4_WAN1" {
  value       = aws_eip.spoke_4_WAN1.public_ip
}

output "spoke_4_WAN2" {
  value       = aws_eip.spoke_4_WAN2.public_ip
}

output "spoke4_FGT_DNS_Name" {
  value = aws_route53_record.spoke4_FGT_Public_DNS.fqdn
}

output "spoke4_Linux_DNS_Name" {
  value = aws_route53_record.spoke4_Linux_Public.fqdn
}

output "spoke4_WebServer_Public" {
  value = aws_route53_record.spoke4_WebServer_Public.fqdn
}

output "spoke4_Windows_Public" {
  value = aws_route53_record.spoke4_Windows_Public.fqdn
}

output "spoke4_Windows_Password" {
  value = aws_instance.spoke_4_WinSrv.password_data
}