
#######################################################
# Script Name: Azure Resource Group Configurations
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the Resource Group Configurations inside the Azure CSP
#          
# Revision: 1
#######################################################

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