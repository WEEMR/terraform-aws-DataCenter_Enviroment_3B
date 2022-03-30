resource "aws_eip" "spoke_4_WAN1" {
  provider               = aws.spoke_4_vpc
  depends_on        = [aws_instance.spoke_4]
  vpc               = true
  network_interface = aws_network_interface.spoke_4_eth0_wan1.id

  tags = {
    Name       = "${var.username}_spoke_4_WAN_1"
    Owner      = var.username
    Enviroment = "Terraform Testing"
  }
}

resource "aws_eip" "spoke_4_WAN2" {
  provider               = aws.spoke_4_vpc
  depends_on        = [aws_instance.spoke_4]
  vpc               = true
  network_interface = aws_network_interface.spoke_4_eth1_wan2.id

  tags = {
    Name       = "${var.username}_spoke_4_WAN_2"
    Owner      = var.username
    Enviroment = "Terraform Testing"
  }
}