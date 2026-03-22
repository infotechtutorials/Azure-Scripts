# Variables

$resourceGroup="---------"
$location="----------"
$vnetName="---------"
$subnetName="---------"
$natName="------------"
$public-ip-name="-------------"

# Create Public IP

az network public-ip create `
  --resource-group $resourceGroup `
  --name $public-ip-name `
  --sku Standard `
  --allocation-method Static `
  --location $location

# Create NAT Gateway using the Public IP

az network nat gateway create `
  --resource-group $resourceGroup `
  --name $natName `
  --location $location `
  --public-ip-addresses $public-ip-name `
  --idle-timeout 10

# Attach NAT Gateway to subnet
az network vnet subnet update `
  --resource-group $resourceGroup `
  --vnet-name $vnetName `
  --name $subnetName `
  --nat-gateway $natName
