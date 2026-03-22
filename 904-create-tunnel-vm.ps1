# Run this in your terminal first

$vmId = az vm show --name *VM Name* --resource-group RG-web-prod --query id -o tsv

# Variables

$bastionName   = "------------------"
$resourceGroup = "-----------------"
$resourcePort  = "22"
$localPort     = "50022"

#Command

az network bastion tunnel `
  --name               $bastionName `
  --resource-group     $resourceGroup `
  --target-resource-id $vmId `
  --resource-port      $resourcePort `
  --port               $localPort
