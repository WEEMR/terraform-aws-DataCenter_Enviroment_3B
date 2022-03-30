##############################################################################################################
#                                                                                                            #
#                                Data Center - Module 1 Terraform deployment                                 #
#                                                                                                            #
##############################################################################################################

# Access and secret keys to your environment

variable "access_key" {}
variable "secret_key" {}

# AWS Key Name to create Resources
variable "keyname" {}

# Devices Username and Password
variable "username" {
  description = "Provide the name of the user who will own the deployed resources"
}
variable "Password" {
    description = "Provide the password which will be used to login to all the deployed resources"
}

// -------------------------------------------------------------------------------- DNS

variable "Public_Hosted_Zone" {}
variable "SubHosted_Zone" {}

// -------------------------------------------------------------------------------- Region

variable "virginia_region" {
  description = "Provide the region to deploy the VPC in"
  default     = "us-east-1"
}


# ------------------------------------------------------------------------------------------------------------

#                                                  Hub 1

# ------------------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------- Hub 1 VPC CIDR Block

variable "hub_1_vpc_cidr" {
  default = "10.100.0.0/16"
}


// Subnets 

variable "hub_1_wan1_subnet_cidr" {
  description = "hub 1 WAN 1 Subnet CIDR Block"
  default     = "10.100.1.0/24"
}

variable "hub_1_wan2_subnet_cidr" {
  description = "hub 1 WAN 2 Subnet CIDR Block"
  default     = "10.100.2.0/24"
}

variable "hub_1_private_subnet_cidr" {
  description = "hub 1 LAN Subnet CIDR Block"
  default     = "10.100.10.0/24"
}


// FGT IPs

variable "hub_1_wan1_pvt_ip" {
  description = "hub 1 WAN 1 Interface IP"
  default     = ["10.100.1.10"]
}

variable "hub_1_wan2_pvt_ip" {
  description = "hub 1 WAN 2 Interface IP"
  default     = ["10.100.2.10"]
}

variable "hub_1_lan_pvt_IP" {
  description = "hub 1 LAN Interface IP"
  default     = ["10.100.10.10"]
}

# Ubuntu

variable "hub_1_Ubuntu_LAN_IP" {
  description = "hub 1 Ubunutu IP"
  default     = ["10.100.10.20"]
}

# Windows

variable "hub_1_WinSrv_LAN_IP" {
  description = "hub 1 Windows Server 2019 IP"
  default     = ["10.100.10.25"]
}

# FortiManager

variable "hub_1_FMG_LAN_IP" {
  description = "hub 1 FortiManager IP"
  default     = ["10.100.10.30"]
}



# ------------------------------------------------------------------------------------------------------------

#                                                  spoke 1

# ------------------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------- Spoke 1 VPC CIDR Block

variable "spoke_1_vpc_cidr" {
  default = "10.1.0.0/16"
}


// Subnets 

variable "spoke_1_wan1_subnet_cidr" {
  description = "spoke 1 WAN 1 Subnet CIDR Block"
  default     = "10.1.1.0/24"
}

variable "spoke_1_wan2_subnet_cidr" {
  description = "spoke 1 WAN 2 Subnet CIDR Block"
  default     = "10.1.2.0/24"
}

variable "spoke_1_private_subnet_cidr" {
  description = "spoke 1 LAN Subnet CIDR Block"
  default     = "10.1.10.0/24"
}


// FGT IPs

variable "spoke_1_wan1_pvt_ip" {
  description = "spoke 1 WAN 1 Interface IP"
  default     = ["10.1.1.10"]
}

variable "spoke_1_wan2_pvt_ip" {
  description = "spoke 1 WAN 2 Interface IP"
  default     = ["10.1.2.10"]
}

variable "spoke_1_lan_pvt_IP" {
  description = "spoke 1 LAN Interface IP"
  default     = ["10.1.10.10"]
}

# Ubuntu

variable "spoke_1_Ubuntu_LAN_IP" {
  description = "spoke 1 Ubunutu IP"
  default     = ["10.1.10.20"]
}

# Windows

variable "spoke_1_WinSrv_LAN_IP" {
  description = "spoke 1 Windows Server 2019 IP"
  default     = ["10.1.10.25"]
}


# ------------------------------------------------------------------------------------------------------------

#                                                  spoke 2

# ------------------------------------------------------------------------------------------------------------

// Spoke 2 VPC CIDR Block

variable "spoke_2_vpc_cidr" {
  default = "10.2.0.0/16"
}


// Subnets 

variable "spoke_2_wan1_subnet_cidr" {
  description = "spoke 2 WAN 1 Subnet CIDR Block"
  default     = "10.2.1.0/24"
}

variable "spoke_2_wan2_subnet_cidr" {
  description = "spoke 2 WAN 2 Subnet CIDR Block"
  default     = "10.2.2.0/24"
}

variable "spoke_2_private_subnet_cidr" {
  description = "spoke 2 LAN Subnet CIDR Block"
  default     = "10.2.10.0/24"
}


// FGT IPs

variable "spoke_2_wan1_pvt_ip" {
  description = "spoke 1 WAN 1 Interface IP"
  default     = ["10.2.1.10"]
}

variable "spoke_2_wan2_pvt_ip" {
  description = "spoke 1 WAN 2 Interface IP"
  default     = ["10.2.2.10"]
}

variable "spoke_2_lan_pvt_IP" {
  description = "spoke 1 LAN Interface IP"
  default     = ["10.2.10.10"]
}

# Ubuntu

variable "spoke_2_Ubuntu_LAN_IP" {
  description = "spoke 2 Ubunutu IP"
  default     = ["10.2.10.20"]
}

# Windows

variable "spoke_2_WinSrv_LAN_IP" {
  description = "spoke 2 Windows Server 2019 IP"
  default     = ["10.2.10.25"]
}


# ------------------------------------------------------------------------------------------------------------

#                                                  spoke 3

# ------------------------------------------------------------------------------------------------------------

// Spoke 3 VPC CIDR Block

variable "spoke_3_vpc_cidr" {
  default = "10.3.0.0/16"
}


// Subnets 

variable "spoke_3_wan1_subnet_cidr" {
  description = "spoke 3 WAN 1 Subnet CIDR Block"
  default     = "10.3.1.0/24"
}

variable "spoke_3_wan2_subnet_cidr" {
  description = "spoke 3 WAN 2 Subnet CIDR Block"
  default     = "10.3.2.0/24"
}

variable "spoke_3_private_subnet_cidr" {
  description = "spoke 3 LAN Subnet CIDR Block"
  default     = "10.3.10.0/24"
}


// FGT IPs

variable "spoke_3_wan1_pvt_ip" {
  description = "spoke 1 WAN 1 Interface IP"
  default     = ["10.3.1.10"]
}

variable "spoke_3_wan2_pvt_ip" {
  description = "spoke 1 WAN 2 Interface IP"
  default     = ["10.3.2.10"]
}

variable "spoke_3_lan_pvt_IP" {
  description = "spoke 1 LAN Interface IP"
  default     = ["10.3.10.10"]
}

# Ubuntu

variable "spoke_3_Ubuntu_LAN_IP" {
  description = "spoke 3 Ubunutu IP"
  default     = ["10.3.10.20"]
}

# Windows

variable "spoke_3_WinSrv_LAN_IP" {
  description = "spoke 3 Windows Server 2019 IP"
  default     = ["10.3.10.25"]
}

# ------------------------------------------------------------------------------------------------------------

#                                                  spoke 4

# ------------------------------------------------------------------------------------------------------------

// spoke 4 VPC CIDR Block

variable "spoke_4_vpc_cidr" {
  default = "10.4.0.0/16"
}


// Subnets 

variable "spoke_4_wan1_subnet_cidr" {
  description = "spoke 4 WAN 1 Subnet CIDR Block"
  default     = "10.4.1.0/24"
}

variable "spoke_4_wan2_subnet_cidr" {
  description = "spoke 4 WAN 2 Subnet CIDR Block"
  default     = "10.4.2.0/24"
}

variable "spoke_4_private_subnet_cidr" {
  description = "spoke 4 LAN Subnet CIDR Block"
  default     = "10.4.10.0/24"
}


// FGT IPs

variable "spoke_4_wan1_pvt_ip" {
  description = "spoke 4 WAN 1 Interface IP"
  default     = ["10.4.1.10"]
}

variable "spoke_4_wan2_pvt_ip" {
  description = "spoke 4 WAN 2 Interface IP"
  default     = ["10.4.2.10"]
}

variable "spoke_4_lan_pvt_IP" {
  description = "spoke 4 LAN Interface IP"
  default     = ["10.4.10.10"]
}

# Ubuntu

variable "spoke_4_Ubuntu_LAN_IP" {
  description = "spoke 4 Ubunutu IP"
  default     = ["10.4.10.20"]
}

# Windows

variable "spoke_4_WinSrv_LAN_IP" {
  description = "spoke 4 Windows Server 2019 IP"
  default     = ["10.4.10.25"]
}




# ------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------

# -------------------------------------------------------------- AMIs

# FortiGate AMI

variable "FGT_VM_AMI" {
  description = "FortiGate FGTVM-AWS(PAYG) - 7.0.5 AMI"
  type        = map
  default = {
    us-east-1 = "ami-03e7e7d91a52ca5a8"
  }
}

// Ubuntu 20.04 LTS
variable "Ubuntu_WebServer_AMI" {
  description = "Ubuntu 20.04 LTS AMI"
  type        = map
  default = {
    us-east-1 = "ami-042e8287309f5df03"
  }
}

// AMIs are for WinSrv2019-Base
variable "WinSrv2019_ami" {
  type = map
  default = {
    us-east-1      = "ami-0aad84f764a2bd39a"
  }
}

// AMIs are for Private FMG AWS - 7.0.5
variable "FMG_VM_AMI" {
  description = "Private - 7.0.5 AMI"
  type        = map
  default = {
    us-east-1 = "ami-0bcf6e77387a9e6f0"
  }
}


# -------------------------------------------------------------- VM Sizes

# FortiGate VM Size

variable "FGT_VM_Size" {
  description = "FGT Instance Size"
  default     = "t3.small"
}

# Ubuntu VM Size

variable "Ubuntu_VM_Size" {
  description = "Ubuntu Instance Size"
  default     = "t3.micro"
}

# Windows VM Size

variable "WinSrv_VM_Size" {
  description = "Windows Server Instance Size"
  default     = "t3.medium"
}

# FortiManager VM Size

variable "FMG_VM_Size" {
  description = "FMG Instance Size"
  default     = "m5.large"
}
