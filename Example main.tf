#Example of terraform main.tf

# Subnet for RG-Infras-AVD-East Example
resource "azurerm_subnet" "AVD-Subnet-East" {
  name                 = "AVD-Subnet-East"
  virtual_network_name = var.VNets["RG-Infras-AVD-East"]["VNet-Infras-AVD-East"]
  address_prefixes     = [var.Subnets["RG-Infras-AVD-East"]["AVDHostPool-Subnet-East"]]
  location             = var.RGs["subscription4_id (CAMO AVD Landing Zone-DelThis)"]
}
