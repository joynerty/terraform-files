
#######################################################
# Script Name: Azure Main Variable Configuration File
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the Azure Configuration Infrastructure across the entire SCCA
#          
# Revision: 1
#######################################################

# Notes Need to update once we get CIDR Ranges from DISA see below:
# Add VNets IP Address Ranges
# Add Subnet IP Address Ranges
# Add Routing Table Address Ranges
# Add Subscripton_ID to the Peering Connections 


# Azure Subscriptions 

variable "Subscriptions" {
  description = "A map of Azure subscription IDs and their associated names."

  default = {
    "CAMO Boundary Protection"    = null
    "CAMO Endpoint Protection"    = null
    "CAMO Management"             = null
    "CAMO AVD Landing Zone"       = null
    "CAMO Identity"               = null
    # Add more subscriptions as needed
  } 
}

# Fetch Azure subscriptions
data "azurerm_subscription" "subscriptions" {
  for_each = var.Subscriptions

  display_name = each.key
}

# Resource Groups

variable "RGs" {
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

variable "VNets" {
  description = "A map of Azure virtual network names and their associated address spaces."

  default = {
    "RG-Infras-Transit-East" = {
      "VNet-Infras-Transit-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-TransitExpressrt-East" = {
      "VNet-Infras-BGPExpress-East" = ["x.x.x.x/x"]

    }
    "RG-Infras-VPN-East" = {
      "VNet-Infras-VPN-East" = ["x.x.x.x/x"]
    }

    "RG-Infras-Transit-West" = {
      "VNet-Infras-Transit-West" = ["x.x.x.x/x"]

    }
    "RG-Infras-TransitExpressrt-West" = {
      "VNet-Infras-BGPExpress-West" = ["x.x.x.x/x"]

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

    # Add more VNets as needed
  }
}

# Subnets - Going to need IPv4 CIDR block addresses from DISA before I can finish this. 
variable "Subnets" {
  description = "A map of Azure subnet names and their associated address prefixes."

  default = {
    "VNet-Infras-Transit-East" = {
      "ApplicationGatewaySubnet-East" = "x.x.x.x/x"
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "CSR-Ingress-EastSubnet" = "x.x.x.x/x"
      "CSR-Egress-EastSubnet" = "x.x.x.x/x"
      "GatewaySubnet-East" = "x.x.x.x/x"

    }

    "VNet-Infras-VPN-East" = {
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "GatewaySubnet-East" = "x.x.x.x/x"
    }

    "VNet-Infras-Transit-West" = {
      "ApplicationGatewaySubnet-West" = "x.x.x.x/x"
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "CSR-Ingress-WestSubnet" = "x.x.x.x/x"
      "CSR-Exgress-WestSubnet" = "x.x.x.x/x"
      "GatewaySubnet-West" = "x.x.x.x/x"

    }

    "VNet-Infras-VPN-West" = {
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "GatewaySubnet-West" = "x.x.x.x/x"

    }

    "VNet-Infras-SharedServices-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "SharedServicesSubnet-East" = "x.x.x.x/x"
    

    }

    "VNet-Infras-SharedServices-West" = {
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "SharedServicesSubnet-West" = "x.x.x.x/x"

    }

    "VNet-Infras-Hub-East" = {
      "AzureFirewallManagementSubnet-East" = "x.x.x.x/x"
      "AzureFirewallSubnet-East" = "x.x.x.x/x"
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "HubCoreSubnet-East" = "x.x.x.x/x"

    }

    "VNet-Infras-Ops-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "OperationSubnet-East" = "x.x.x.x/x"
      "OperationManagementSubnet-East" = "x.x.x.x/x"
      
    }

    "VNet-Infras-Hub-West" = {
      "AzureFirewallManagementSubnet-West" = "x.x.x.x/x"
      "AzureFirewallSubnet-West" = "x.x.x.x/x"
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "HubCoreSubnet-West" = "x.x.x.x/x"

    }

    "VNet-Infras-Ops-West" = {
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "OperationSubnet-West" = "x.x.x.x/x"
      "OperationManagementSubnet-West" = "x.x.x.x/x"

    }

    "VNet-Infras-AVD-East" = {
      "AzureBastionSubnet-East" = "x.x.x.x/x"
      "AVDHostPool-Subnet-East" = "x.x.x.x/x"

    }

    "VNet-Infras-AVD-West" = {
      "AzureBastionSubnet-West" = "x.x.x.x/x"
      "AVDHostPool-Subnet-West" = "x.x.x.x/x"

    }
    # Add more subnets as needed
  }
}

# Routing Tables - Going to need IPv4 CIDR block addresses from DISA before I can finish this.
variable "RT" {
  description = "A map of route table names and their associated routes."

  default = {
    "RT-Infras-Transit-Firewall-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Transit-FirewallManagment-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
    "RT-Infras-Transit-GatewaySubnet-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Transit-AppGatewaySubnet-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-Transit-CSRIngress-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-Transit-CSREgress-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-VPN-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-VPN-GatewaySubnet-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
      "RT-Infras-Hub-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Hub-Firewall-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-Ops-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
      "RT-Infras-SharedSerivces-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
      "RT-Infras-AVD-East" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
      "RT-Infras-Transit-Firewall-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Transit-FirewallManagment-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
    "RT-Infras-Transit-GatewaySubnet-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Transit-AppGatewaySubnet-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-VPN-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-VPN-GatewaySubnet-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
      "RT-Infras-Hub-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

    "RT-Infras-Hub-Firewall-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }

      "RT-Infras-Ops-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
    }
    
      "RT-Infras-SharedSerivces-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
     }
    
      "RT-Infras-AVD-West" = {
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      }
      "Name" = {
        address_prefix  = "x.x.x.x/x"
        next_hop_type   = "x"
        next_hop_in_ip_address = "x.x.x.x"
      } 
    # Add more route tables and routes as needed
  }
}

# Virtual Network Peerings - Going to need IPv4 CIDR block addresses from DISA before I can finish this.

variable "virtual_network_peerings" {
  description = "A map of virtual network peering configurations."

  default = {

      "VNet-Infras-Transit-East-to-VNet-Infras-BGPExpress-East" = {
      "name"                         = "VNet-Infras-Transit-East-Peering-VNet-Infras-BGPExpress-East"
      "virtual_network_name"         = "VVNet-Infras-Transit-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Transit-East"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-BGPExpress-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = true
      "use_remote_gateways"          = false
    }


      "VNet-Infras-BGPExpress-East-Peering-VNet-Infras-Transit-East" = {
      "name"                         = "VNet-Infras-BGPExpress-East-Peering-VNet-Infras-Transit-East"
      "virtual_network_name"         = "VNet-Infras-BGPExpress-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-BGPExpress-East"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Transit-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = true
    }


      "VNet-Infras-Transit-East-to-VNet-Infras-Hub-East" = {
      "name"                         = "VNet-Infras-Transit-East-Peering-VNet-Infras-BGPExpress-East"
      "virtual_network_name"         = "VVNet-Infras-Transit-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Transit-East"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Hub-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = true
      "use_remote_gateways"          = false
    }


      "VNet-Infras-Hub-East-Peering-VNet-Infras-Transit-East" = {
      "name"                         = "VNet-Infras-Hub-East-Peering-VNet-Infras-Transit-East"
      "virtual_network_name"         = "VNet-Infras-Hub-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Hub-East"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Transit-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = true
    }


      "VNet-Infras-Transit-West-to-VNet-Infras-BGPExpress-West" = {
      "name"                         = "VNet-Infras-Transit-West-Peering-VNet-Infras-BGPExpress-West"
      "virtual_network_name"         = "VVNet-Infras-Transit-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Transit-West"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-BGPExpress-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = true
      "use_remote_gateways"          = false
    }


      "VNet-Infras-BGPExpress-West-Peering-VNet-Infras-Transit-West" = {
      "name"                         = "VNet-Infras-BGPExpress-West-Peering-VNet-Infras-Transit-West"
      "virtual_network_name"         = "VNet-Infras-BGPExpress-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-BGPExpress-West"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Transit-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = true
    }


      "VNet-Infras-Transit-West-to-VNet-Infras-Hub-West" = {
      "name"                         = "VNet-Infras-Transit-West-Peering-VNet-Infras-BGPExpress-West"
      "virtual_network_name"         = "VVNet-Infras-Transit-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Transit-West"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Hub-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = true
      "use_remote_gateways"          = false
    }


      "VNet-Infras-Hub-West-Peering-VNet-Infras-Transit-West" = {
      "name"                         = "VNet-Infras-Hub-West-Peering-VNet-Infras-Transit-West"
      "virtual_network_name"         = "VNet-Infras-Hub-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Hub-West"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Transit-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = true
    }


      "VNet-Infras-Hub-East-to-VNet-Infras-VPN-East" = {
      "name"                         = "VNet-Infras-Hub-East-Peering-VNet-Infras-VPN-East"
      "virtual_network_name"         = "VVNet-Infras-Hub-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Hub-East"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-VPN-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = false
    }


      "VNet-Infras-VPN-East-Peering-VNet-Infras-Hub-East" = {
      "name"                         = "VNet-Infras-VPN-East-Peering-VNet-Infras-Hub-East"
      "virtual_network_name"         = "VNet-Infras-VPN-East"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-VPN-East"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Hub-East"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = false
    }


      "VNet-Infras-Hub-West-to-VNet-Infras-VPN-West" = {
      "name"                         = "VNet-Infras-Hub-West-Peering-VNet-Infras-VPN-West"
      "virtual_network_name"         = "VVNet-Infras-Hub-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-Hub-West"].id}/resourceGroups/RG-Infras-TransitExpressrt-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-VPN-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = false
    }


      "VNet-Infras-VPN-West-Peering-VNet-Infras-Hub-West" = {
      "name"                         = "VNet-Infras-VPN-West-Peering-VNet-Infras-Hub-West"
      "virtual_network_name"         = "VNet-Infras-VPN-West"
      "remote_virtual_network_id"    = "/subscriptions/${data.azurerm_subscription.subscriptions["VNet-Infras-VPN-West"].id}/resourceGroups/RG-Infras-Transit-East/providers/Microsoft.Network/virtualNetworks/VNet-Infras-Hub-West"
      "allow_virtual_network_access" = true
      "allow_forwarded_traffic"      = true
      "allow_gateway_transit"        = false
      "use_remote_gateways"          = false
    }




}

