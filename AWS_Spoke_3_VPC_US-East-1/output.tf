// ------------------------------- VPC

output "SDWAN_VPC" {
  value       = aws_vpc.SDWAN_VPC.id
}

// ------------------------------- Security Groups 


output "default_SG" {
  value = aws_default_security_group.default_SG.id
}

output "Public_SG" {
  value = aws_security_group.Public_SG.id
}

output "Private_SG" {
  value = aws_security_group.Private_SG.id
}

// ------------------------------- spoke 3

output "spoke_3_wan1_subnet_id" {
  value       = aws_subnet.spoke_3_wan1_subnet.id
}

output "spoke_3_wan2_subnet_id" {
  value       = aws_subnet.spoke_3_wan2_subnet.id
}

output "spoke_3_private_subnet_id" {
  value       = aws_subnet.spoke_3_private_subnet.id
}

output "spoke_3_pvt_rt_id" {
  value       = aws_route_table.spoke_3_pvt_rt.id
}
