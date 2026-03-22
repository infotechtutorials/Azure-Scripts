# Variables

$resourceGroup = "------------"
$location = "------------"
$vnetName = "------------"
$subnetName = "------------"

#  Addressing
$vnetAddressSpace = "------------"
$subnetPrefix     = "------------"

# Create Subnet configuration

$subnet = New-AzVirtualNetworkSubnetConfig `
    -Name $subnetName `
    -AddressPrefix $subnetPrefix `
    -DefaultOutboundAccess $false


# Create Virtual Network

New-AzVirtualNetwork `
    -ResourceGroupName $resourceGroup `
    -Location $location `
    -Name $vnetName `
    -AddressPrefix $vnetAddressSpace `
    -Subnet $subnet
