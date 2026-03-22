$bastionName   = "--------------"
$resourceGroup = "----------------"
$enableTunnel  = "true"

az network bastion update `
  --name             $bastionName `
  --resource-group   $resourceGroup `
  --enable-tunneling $enableTunnel
