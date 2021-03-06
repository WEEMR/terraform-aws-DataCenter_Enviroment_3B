// -------------------------------------------------------------------------------------------------------------  Subnets 

// ------------------------------------------------------------------------------ spoke 1 Subnets

// spoke 1 Public Subnet 1

resource "aws_subnet" "spoke_3_wan1_subnet" {
  provider          = aws.spoke_3_vpc
  vpc_id            = aws_vpc.SDWAN_VPC.id
  cidr_block        = var.spoke_3_wan1_subnet_cidr
  availability_zone = data.aws_availability_zones.AZs.names[0]
  tags = {
    Name       = "${var.username}_Terraform_SDAWN_spoke_3_WAN_1"
    reference  = "spoke_3_wan1_subnet" 
    Owner      = var.username
    Enviroment = "Terraform Testing"
  }
}

// spoke 1 Public Subnet 2

resource "aws_subnet" "spoke_3_wan2_subnet" {
  provider          = aws.spoke_3_vpc
  vpc_id            = aws_vpc.SDWAN_VPC.id
  cidr_block        = var.spoke_3_wan2_subnet_cidr
  availability_zone = data.aws_availability_zones.AZs.names[0]
  tags = {
    Name       = "${var.username}_Terraform_SDAWN_spoke_3_WAN_2"
    reference  = "spoke_3_wan2_subnet" 
    Owner      = var.username
    Enviroment = "Terraform Testing"
  }
}

// -------------------------- spoke 2 Public Subnets Association with RT

resource "aws_route_table_association" "spoke_3_wan1_RT_association" {
  provider       = aws.spoke_3_vpc
  subnet_id      = aws_subnet.spoke_3_wan1_subnet.id
  route_table_id = aws_default_route_table.public_subnets_RT.id
}

// Public Subnet 2 Association

resource "aws_route_table_association" "spoke_3_wan2_RT_association" {
  provider       = aws.spoke_3_vpc
  subnet_id      = aws_subnet.spoke_3_wan2_subnet.id
  route_table_id = aws_default_route_table.public_subnets_RT.id
}


// spoke 1 Private Subnet

resource "aws_subnet" "spoke_3_private_subnet" {
  provider          = aws.spoke_3_vpc
  vpc_id            = aws_vpc.SDWAN_VPC.id
  cidr_block        = var.spoke_3_private_subnet_cidr
  availability_zone = data.aws_availability_zones.AZs.names[0]
  tags = {
    Name       = "${var.username}_Terraform_SDAWN_spoke_3_Private_Subnet"
    reference  = "spoke_3_private_subnet" 
    Owner      = var.username
    Enviroment = "Terraform Testing"

  }
}

// -------------------------- spoke 1 Private Subnet Association with RT


// Virginia Private Subnet 1 Association 

resource "aws_route_table_association" "spoke_3_private_RT_association" {
  provider       = aws.spoke_3_vpc
  subnet_id      = aws_subnet.spoke_3_private_subnet.id
  route_table_id = aws_route_table.spoke_3_pvt_rt.id
}