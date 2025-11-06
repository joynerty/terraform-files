
#######################################################
# Script Name: Azure Subscription Configuration
# Author: Austin Daniel | CACI | Sr. Azure System Engineer 
# Purpose: Automate the Subscription Configuration inside the Azure CSP
#          
# Revision: 1
#######################################################

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