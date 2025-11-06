#--EAST VPN Connections
Variable "East VPN Connections" {
  default = {
    "connections_AWS_East01_VPN_name" { 
    "name"                           = "AWS-East-01-VPN"
    "resource_group"                 = "uscgsce-vpn-e-rg"
    "location"                       = "USGov Virginia"
    "subscription_name"              = "CDM A RFS0029-03 Boundary Protection"
    "virtual_network"                = "uscgsce-vpn-e-vnet" 
    "virtual_network_gateway"        = "uscgsce-vpn-gateway"
    "local_network_gateway"          = "AWS-TGW-AZ-VPN-E-01"
    "connection_type"                = "IPsec"
    "connection_protocol"            = "IKEv2"
    "routing_weight"                 = "0"
    "use_azure_private_ip_address"   = false
    "enable_bgp"                     = false
    "use_local_azure_ip_address"     = false
    "use_policy_based_traffic_selectors" = false    
    "sa_life_time_seconds"           = "3600"
    "sa_data_size_kilobytes"         = "102400000" 
    "ipsec_encryption"               = "AES256"
    "ipsec_integrity"                = "SHA256"
    "ike_encryption"                 = "AES256"
    "ike_integrity"                  = "SHA256"
    "dh_group"                       = "DHGroup14"
    "pfs_group"                      = "ECP384"
    "express_route_gateway_bypass"   = false
    "enable_private_link_fast_path"  = false
    "dpd_timeout_seconds"            = "45"
    "connection_mode"                = "initiator only"
    }

    "connections_AWS_East02_VPN_name" { 
    "name"                           = "AWS-East-02-VPN"
    "resource_group"                 = "uscgsce-vpn-e-rg"
    "location"                       = "USGov Virginia"
    "subscription_name"              = "CDM A RFS0029-03 Boundary Protection"
    "virtual_network"                = "uscgsce-vpn-e-vnet" 
    "virtual_network gateway"        = "uscgsce-vpn-gateway"
    "local_network_gateway"          = "AWS-TGW-AZ-VPN-E-02"
    "connection_type"                = "IPsec"
    "connection_protocol"            = "IKEv2"
    "routing_weight"                 = "0"
    "use_azure_private_ip_address"   = false
    "enable_bgp"                     = false
    "use_local_azure_ip_address"     = false
    "use_policy_based_traffic_selectors" = false    
    "sa_life_time_seconds"           = "3600"
    "sa_data_size_kilobytes"         = "102400000" 
    "ipsec_encryption"               = "AES256"
    "ipsec_integrity"                = "SHA256"
    "ike_encryption"                 = "AES256"
    "ike_integrity"                  = "SHA256"
    "dh_group"                       = "DHGroup14"
    "pfs_group"                      = "ECP384"
    "express_route_gateway_bypass"   = false
    "enable_private_link_fast_path"  = false
    "dpd_timeout_seconds"            = "45"
    "connection_mode"                = "initiator only"
  }   

}
}






#-- EAST VPN Connections
variable "East_VPN_Connections" {
  default = {
    "connections_AWS_East01_VPN_name" = {
      name                                = "AWS-East-01-VPN"
      resource_group                      = "uscgsce-vpn-e-rg"
      location                            = "USGov Virginia"
      subscription_name                   = "CDM A RFS0029-03 Boundary Protection"
      virtual_network                    = "uscgsce-vpn-e-vnet" 
      virtual_network_gateway            = "uscgsce-vpn-gateway"
      local_network_gateway              = "AWS-TGW-AZ-VPN-E-01"
      connection_type                    = "IPsec"
      connection_protocol                = "IKEv2"
      routing_weight                     = "0"
      use_azure_private_ip_address       = false
      enable_bgp                         = false
      use_local_azure_ip_address         = false
      use_policy_based_traffic_selectors = false    
      sa_life_time_seconds               = "3600"
      sa_data_size_kilobytes             = "102400000" 
      ipsec_encryption                   = "AES256"
      ipsec_integrity                    = "SHA256"
      ike_encryption                     = "AES256"
      ike_integrity                      = "SHA256"
      dh_group                           = "DHGroup14"
      pfs_group                          = "ECP384"
      express_route_gateway_bypass       = false
      enable_private_link_fast_path      = false
      dpd_timeout_seconds                = "45"
      connection_mode                    = "initiator only"
    }

    "connections_AWS_East02_VPN_name" = {
      name                                = "AWS-East-02-VPN"
      resource_group                      = "uscgsce-vpn-e-rg"
      location                            = "USGov Virginia"
      subscription_name                   = "CDM A RFS0029-03 Boundary Protection"
      virtual_network                    = "uscgsce-vpn-e-vnet" 
      virtual_network_gateway            = "uscgsce-vpn-gateway"
      local_network_gateway              = "AWS-TGW-AZ-VPN-E-02"
      connection_type                    = "IPsec"
      connection_protocol                = "IKEv2"
      routing_weight                     = "0"
      use_azure_private_ip_address       = false
      enable_bgp                         = false
      use_local_azure_ip_address         = false
      use_policy_based_traffic_selectors = false    
      sa_life_time_seconds               = "3600"
      sa_data_size_kilobytes             = "102400000" 
      ipsec_encryption                   = "AES256"
      ipsec_integrity                    = "SHA256"
      ike_encryption                     = "AES256"
      ike_integrity                      = "SHA256"
      dh_group                           = "DHGroup14"
      pfs_group                          = "ECP384"
      express_route_gateway_bypass       = false
      enable_private_link_fast_path      = false
      dpd_timeout_seconds                = "45"
      connection_mode                    = "initiator only"
    }
  }
}
