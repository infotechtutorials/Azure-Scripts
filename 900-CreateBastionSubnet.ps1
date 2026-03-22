# Variable

$resourceGroup = "-----------"
$vnetName = "-----------"
$subnetName = "AzureBastionSubnet"
$addressPrefix = "--------/26"

az network vnet subnet create `
  --resource-group $resourceGroup `
  --vnet-name $vnetName `
  --name $subnetName `
  --address-prefixes $addressPrefix
