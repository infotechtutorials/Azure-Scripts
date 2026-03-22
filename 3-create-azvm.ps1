# Create an SSH Key Pair

ssh-keygen -t rsa -b 4096 -f "$env:USERPROFILE\.ssh\key_name"

# ---- Variables ----- #

$resourceGroup = "-------"
$vmName = "-------"
$location = "------"
$image = "Ubuntu2404"
$size = "Standard_B2als"
$vnetName = "--------"
$subnetName = "---------"
$adminUser = "---------"
$SSH_Key = "$env:USERPROFILE\.ssh\--------"

az vm create `
   --name $vmName `
   --resource-group $resourceGroup `
   --location $location `
   --image $image `
   --size $size `
   --vnet-name $vnetName `
   --subnet $subnetName `
   --admin-username $adminUser `
   --authentication-type ssh `
   --ssh-key-values $SSH_Key `
   --public-ip-address '""' `
   --nsg '""'
