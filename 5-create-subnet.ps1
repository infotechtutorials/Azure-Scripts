# Variables
$resourceGroup = "---------"
$vnetName = "----------"
$subnetName = "----------"
$subnetPrefix = "-----------"

# Get existing VNet

$vnet = Get-AzVirtualNetwork `
    -ResourceGroupName $resourceGroup `
    -Name $vnetName

# Add subnet to VNet object
Add-AzVirtualNetworkSubnetConfig `
    -Name $subnetName `
    -AddressPrefix $subnetPrefix `
    -VirtualNetwork $vnet `
    -DefaultOutboundAccess $false

# Apply changes (VERY IMPORTANT)
$vnet | set-AzVirtualNetwork
