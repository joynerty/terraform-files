# Azure Terrafrom Variable File

# Azure Subscriptions 

variable "subscriptions" {
  description = "A map of Azure subscription IDs and their associated names."

  default = {
    "subscription1_id" = "CAMO Boundary Protection"
    "subscription2_id" = "CAMO Endpoint Protection"
    "subscription3_id" = "CAMO Management"
    "subscription4_id" = "CAMO AVD Landing Zone"
    "subscription5_id" = "CAMO Identity (Dont think we need this one)"
    # Add more subscriptions as needed
  } 
}

# Resource Groups

variable "resource_groups" {
  description = "A map of Azure resource group names and their associated locations."

  default = {
    "subscription1_id (CAMO Boundary Protection-DelThis)" = {
      "RG-Infras-Transit-East" = "UsGov-Virginia"
      "RG-Infras-TransitExpressrt-East" = "UsGov-Virginia"
      "RG-Infras-VPN-East" = "UsGov-Virginia"
      "RG-BoundaryProtection-NetworkWatcher-East" = "UsGov-Virginia"
      "RG-Infras-Transit-West" = "UsGov-Texas"
      "RG-Infras-TransitExpressrt-West" = "UsGov-Texas"
      "RG-Infras-VPN-West" = "UsGov-Texas"
    }
    "subscription2_id (CAMO Endpoint Protection-DelThis)" = {
      "RG-Infras-SharedServices-East" = "UsGov-Virginia"
      "RG-Infras-SharedServices-West" = "UsGov-Texas"
      "RG-Endpoint-NetworkWatcher-East" = "UsGov-Virginia"
    }
    "subscription2_id (CAMO Management-DelThis)" = {
      "RG-Infras-Hub-East" = "UsGov-Virginia"
      "RG-Infras-Ops-East" = "UsGov-Virginia"
      "RG-Infras-Ops-Acas-East " = "UsGov-Virginia"
      "RG-Infras-Ops-Auto-East" = "UsGov-Virginia"
      "RG-Infras-Ops-AWSLogs-East" = "UsGov-Virginia"
      "RG-Infras-Ops-Cli-East" = "UsGov-Virginia"
      "RG-Infras-Ops-Dr-East" = "UsGov-Virginia"
      "RG-Infras-Ops-OSImages-East" = "UsGov-Virginia"
      "RG-Management-NetworkWatcher-East" = "UsGov-Virginia"
      "RG-Management-CloudShell-LogAnalytics-East" = "UsGov-Virginia"
      "RG-Infras-Hub-West" = "UsGov-Texas"
      "RG-Infras-Ops-West" = "UsGov-Texas"
      "RG-Infras-Ops-Auto-West" = "UsGov-Texas"
      "RG-Infras-Ops-OSImages-West" = "UsGov-Texas"
    }
    "subscription2_id (CAMO AVD Landing Zone-DelThis)" = {
      "RG-Infras-AVD-East" = "UsGov-Virginia"
      "RG-Infras-AVD-HostPools-East" = "UsGov-Virginia"
      "RG-Infras-AVD-OSImages-East" = "UsGov-Virginia"
      "RG-Infras-AVD-StorageProfiles-East" = "UsGov-Virginia"
      "RG-Infras-AVD-Billing-East" = "UsGov-Virginia"
      "RG-AVDLandingZone-NetworkWatcher-East" = "UsGov-Virginia"
      "RG-Infras-AVD-West" = "UsGov-Texas"
    }
    # Add more resource groups as needed
  }
}

# Virtual Networks - Going to need IPv4 CIDR block addresses from DISA before I can finish this.

variable "virtual_networks" {
  description = "A map of Azure virtual network names and their associated address spaces."

  default = {
    "RG-Infras-Transit-East" = {
      "VNet-Infras-Transit-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-TransitExpressrt-East" = {
      "VNet-Infras-TransitExpressrt-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-VPN-East" = {
      "VNet-Infras-VPN-East" = ["x.x.x.x/x"]
    }

    "RG-Infras-Transit-West" = {
      "VNet-Infras-Transit-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-TransitExpressrt-West" = {
      "VNet-Infras-TransitExpressrt-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-VPN-West" = {
      "VNet-Infras-VPN-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-SharedServices-East" = {
      "VNet-Infras-SharedServices-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-SharedServices-West" = {
      "VNet-Infras-SharedServices-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-Hub-East" = {
      "VNet-Infras-Hub-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-Ops-East" = {
      "VNet-Infras-Ops-East" = ["x.x.x.x/x"]
      
    }
    "RG-Infras-Hub-West" = {
      "VNet-Infras-Hub-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-Ops-West" = {
      "VNet-Infras-Ops-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-AVD-East" = {
      "VNet-Infras-AVD-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-AVD-West" = {
      "VNet-Infras-AVD-West" = ["x.x.x.x/x"]

    }

    # Add more virtual networks as needed
  }
}

# Subnets - Going to need IPv4 CIDR block addresses from DISA before I can finish this. 
variable "subnets" {
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
