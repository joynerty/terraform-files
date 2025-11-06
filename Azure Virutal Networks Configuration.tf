

# Virtual Networks - Going to need IPv4 CIDR block addresses from DISA before I can finish this.


variable "VNets" {
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

    # Add more VNets as needed
  }
}