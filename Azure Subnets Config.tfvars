
#######################################################
# Script Name: Azure Subnet Configurations
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the Subnet Configurations inside the Azure CSP
#          
# Revision: 1
#######################################################

# Subnets - Going to need IPv4 CIDR block addresses from DISA before I can finish this. 


variable "Subnets" {
  description = "A map of Azure subnet names and their associated address prefixes."

  default = {
    "RG-Infras-Transit-East" = {
      "ApplicationGatewaySubnet-East" = "x.x.x.x/x"
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "CSR-Ingress-EastSubnet" = "x.x.x.x/x"
      "CSR-Egress-EastSubnet" = "x.x.x.x/x"
      "GatewaySubnet-East" = "x.x.x.x/x"

    }
    "RG-Infras-VPN-East" = {
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "GatewaySubnet-East" = "x.x.x.x/x"
    }

    "RG-Infras-Transit-West" = {
      "ApplicationGatewaySubnet-West" = "x.x.x.x/x"
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "CSR-Ingress-WestSubnet" = "x.x.x.x/x"
      "CSR-Exgress-WestSubnet" = "x.x.x.x/x"
      "GatewaySubnet-West" = "x.x.x.x/x"

    }
    "RG-Infras-VPN-West" = {
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "GatewaySubnet-West" = "x.x.x.x/x"

    }
    "RG-Infras-SharedServices-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "SharedServicesSubnet-East" = "x.x.x.x/x"
    

    }
    "RG-Infras-SharedServices-West" = {
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "SharedServicesSubnet-West" = "x.x.x.x/x"

    }
    "RG-Infras-Hub-East" = {
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "HubCoreSubnet-East" = "x.x.x.x/x"

    }
    "RG-Infras-Ops-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "OperationSubnet-East" = "x.x.x.x/x"
      "OperationManagementSubnet-East" = "x.x.x.x/x"
      
    }
    "RG-Infras-Hub-West" = {
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "HubCoreSubnet-West" = "x.x.x.x/x"

    }
    "RG-Infras-Ops-West" = {
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "OperationSubnet-West" = "x.x.x.x/x"
      "OperationManagementSubnet-West" = "x.x.x.x/x"

    }
    "RG-Infras-AVD-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "AVDHostPool-Subnet-East" = "x.x.x.x/x"

    }
    "RG-Infras-AVD-West" = {
      "VNet-Infras-AVD-West" = "x.x.x.x/x"

    }
    # Add more subnets as needed
  }
}