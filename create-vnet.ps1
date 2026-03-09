# Variables

$ResourceGroup = "RG-web-test"
$Location = "CanadaCentral"
$VNetName = "vnet-web-test"
$AddressSpace = "192.168.0.0/16"
$SubnetName = "default"
$SubnetPrefix = "192.168.1.0/24"

# Create Subnet configuration

$Subnet = New-AzVirtualNetworkSubnetConfig `
    -name $SubnetName `
    -AddressPrefix $SubnetPrefix

# Create Virtual Network

New-AzVirtualNetwork `
     -ResourceGroupName $ResourceGroup `
     -Location $Location `
     -Name $VNetName `
     -AddressPrefix $AddressSpace `
     -Subnet $Subnet
