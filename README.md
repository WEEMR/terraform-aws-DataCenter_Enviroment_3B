# FortiGate SD-WAN DataCenter Enviroment 3B

To use this module Please go to (https://github.com/waleedrady/AWS_Cloud_DC_Environment_3B)

Terraform Module that will create the AWS Networking Stack with FGT, Apache Server, Windows Server and utilize AWS Route53 for DNS.


![image](https://user-images.githubusercontent.com/83562796/160910063-8fc92a7f-e136-457d-bff9-e9b5793938aa.png)


The module will create the below resources:

- 5 x VPCs, a single Hub and 4 Spoke
- Networking Stack (VPC, Subnets, Route Tables, Security Groups, Internet Gateway and Nat Gateway) - Please refer to the diagram below.
- 5 x FortiGate with 3 interfaces (Two Interfaces in two different Public Subnets and one in the Private subnets)
- 5 x Windows Server 2019 Behind each FGT Port 3 [LAN]
- 5 x Ubunutu Server with Apache installed, iperf, fzf, pydf, firefox, lynx and elinks installed on it behind each FGT port 3 [LAN]
- Route53 DNS Public Hosted Zones
- FortiManager will be deployed as well behind the Hub FGT on Port 3 [LAN]
- VPC Flow Logs


// The DNS Hosted Zones must be sub-zones for a domain that is registered or managed by AWS Route53 //

// i.e xyz.com is the domain name and you will create the subzone Lab1.xyz.com // 

