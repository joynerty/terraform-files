
#######################################################
# Script Name: Azure ExpressRoute Configuration
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the ExpressRoute Configuration inside the Azure CSP
#          
# Revision: 1
#######################################################

# Azure ExpressRoute Configuration


variable "expressroute_circuits" {
  description = "A map of ExpressRoute circuit configurations."

  default = {
    "expressroute_circuit_1" = {
      name                   = "expressroute-circuit-1"
      location               = "East US"
      bandwidth_in_mbps      = 1000
      service_provider_name  = "Service Provider Name"
      peering_location       = "Peering Location"
      sku_tier               = "Premium"
      sku_family             = "MeteredData"
    }

    "expressroute_circuit_2" = {
      name                   = "expressroute-circuit-2"
      location               = "West US"
      bandwidth_in_mbps      = 500
      service_provider_name  = "Service Provider Name"
      peering_location       = "Peering Location"
      sku_tier               = "Standard"
      sku_family             = "UnlimitedData"
    }
  }
}

# ExpressRoute Circuit Authorizations
variable "expressroute_authorizations" {
  description = "A map of ExpressRoute circuit authorizations."

  default = {
    "authorization_1" = {
      expressroute_circuit_id  = "expressroute-circuit-1"
      authorization_name       = "authorization-1"
      authorization_key        = "Authorization Key"
    }

    "authorization_2" = {
      expressroute_circuit_id  = "expressroute-circuit-2"
      authorization_name       = "authorization-2"
      authorization_key        = "Authorization Key"
    }
  }
}

# ExpressRoute Peering Configurations
variable "expressroute_peerings" {
  description = "A map of ExpressRoute peering configurations."

  default = {
    "peering_1" = {
      expressroute_circuit_id  = "expressroute-circuit-1"
      name                     = "peering-1"
      peer_asn                 = 65000
      primary_peer_address     = "Primary Peer IP Address"
      secondary_peer_address   = "Secondary Peer IP Address"
      vlan_id                  = 100
    }

    "peering_2" = {
      expressroute_circuit_id  = "expressroute-circuit-2"
      name                     = "peering-2"
      peer_asn                 = 65000
      primary_peer_address     = "Primary Peer IP Address"
      secondary_peer_address   = "Secondary Peer IP Address"
      vlan_id                  = 200
    }
  }
}
