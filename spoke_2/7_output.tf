output "spoke_2_WAN1" {
  value       = aws_eip.spoke_2_WAN1.public_ip
}

output "spoke_2_WAN2" {
  value       = aws_eip.spoke_2_WAN2.public_ip
}

output "spoke2_FGT_DNS_Name" {
  value = aws_route53_record.spoke2_FGT_Public_DNS.fqdn
}

output "spoke2_Linux_DNS_Name" {
  value = aws_route53_record.spoke2_Linux_Public.fqdn
}

output "spoke2_WebServer_Public" {
  value = aws_route53_record.spoke2_WebServer_Public.fqdn
}

output "spoke2_Windows_Public" {
  value = aws_route53_record.spoke2_Windows_Public.fqdn
}

output "spoke2_Windows_Password" {
  value = aws_instance.spoke_2_WinSrv.password_data
}