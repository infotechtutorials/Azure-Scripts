$resourceGroup   = "----------"
$bastionName     = "---------------"
$publicIpName    = "------------------"
$vnetName        = "----------------"
$location        = "---------------"
$sku             = "Standard"

az network bastion create `
  --resource-group      $resourceGroup `
  --name                $bastionName `
  --public-ip-address   $publicIpName `
  --vnet-name           $vnetName `
  --location            $location `
  --sku                 $sku
