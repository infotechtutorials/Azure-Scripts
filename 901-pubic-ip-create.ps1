$resourceGroup     = "---------"
$publicIpName      = "------------"
$sku               = "Standard"
$allocationMethod  = "Static"
$location          = "-------------"

az network public-ip create `
  --resource-group   $resourceGroup `
  --name             $publicIpName `
  --sku              $sku `
  --allocation-method $allocationMethod `
  --location         $location
