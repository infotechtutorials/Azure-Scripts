# Variables

$ResourceGroup = "RG-web-prod"
$Location = "CanadaCentral"
$VNetName = "vnet-web-prod"
$SubnetName = "subnet-web-prod"

#  Addressing
$VNetAddressSpace = "192.168.0.0/16"
$SubnetPrefix     = "192.168.100.0/24"

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
