# Variables

$RESOURCE_GROUP="---------"
$LOCATION="canadacentral"
$VNET_NAME="---------"
$SUBNET_NAME="---------"
$NAT_NAME="------------"
$PUBLIC_IP_NAME="-------------"

# Create Public IP

az network public-ip create `
  --resource-group $RESOURCE_GROUP `
  --name $PUBLIC_IP_NAME `
  --sku Standard `
  --allocation-method Static `
  --location $LOCATION

# Create NAT Gateway using the Public IP

az network nat gateway create `
  --resource-group $RESOURCE_GROUP `
  --name $NAT_NAME `
  --location $LOCATION `
  --public-ip-addresses $PUBLIC_IP_NAME `
  --idle-timeout 10

# Attach NAT Gateway to subnet
az network vnet subnet update `
  --resource-group $RESOURCE_GROUP `
  --vnet-name $VNET_NAME `
  --name $SUBNET_NAME `
  --nat-gateway $NAT_NAME
