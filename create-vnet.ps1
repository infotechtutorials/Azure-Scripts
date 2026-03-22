# Variables

$ResourceGroup = "------------"
$Location = "------------"
$VNetName = "------------"
$SubnetName = "------------"

#  Addressing
$VNetAddressSpace = "------------"
$SubnetPrefix     = "------------"

# Create Subnet configuration

$Subnet = New-AzVirtualNetworkSubnetConfig `
    -Name $SubnetName `
    -AddressPrefix $SubnetPrefix `
    -DefaultOutboundAccess $false


# Create Virtual Network

New-AzVirtualNetwork `
    -ResourceGroupName $ResourceGroup `
    -Location $Location `
    -Name $VNetName `
    -AddressPrefix $VNetAddressSpace `
    -Subnet $Subnet
