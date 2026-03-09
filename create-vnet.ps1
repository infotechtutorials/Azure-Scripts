# Variables

$ResourceGroup = "-----"
$Location = "-----"
$VNetName = "------"
$AddressSpace = "--------"
$SubnetName = "-------"
$SubnetPrefix = "------"

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
