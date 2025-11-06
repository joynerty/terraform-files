
#######################################################
# Script Name: Azure Routing Table Configurations
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the Routing Table Configurations inside the Azure CSP
#          
# Revision: 1
#######################################################

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