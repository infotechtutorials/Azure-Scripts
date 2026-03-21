# Variables
$ResourceGroup = "---------"
$VNetName = "----------"
$SubnetName = "----------"
$SubnetPrefix = "-----------"

# Get existing VNet

$vnet = Get-AzVirtualNetwork `
    -ResourceGroupName $ResourceGroup `
    -Name $VNetName

# Add subnet to VNet object
Add-AzVirtualNetworkSubnetConfig `
    -Name $SubnetName `
    -AddressPrefix $SubnetPrefix `
    -VirtualNetwork $vnet `
    -DefaultOutboundAccess $false

# Apply changes (VERY IMPORTANT)
$vnet | set-AzVirtualNetwork
