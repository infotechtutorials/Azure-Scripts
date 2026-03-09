# ---- Variables ----- #

$Resource_Group = "RG-web-test"
$VM_Name = "web-02-test"
$Location = "CanadaEast"
$Image = "Ubuntu2404"
$Size = "Standard_B2als"
$VNet_Name = "vnet-web-test"
$Subnet_Name = "subnet-web-test"
$Admin_User = "azureadmin"
$SSH_Key = "$env:USERPROFILE\.ssh\web-02-test-key.pub"

az vm create `
   --name $VM_Name `
   --resource-group $Resource_Group `
   --location $Location `
   --image $Image `
   --size $Size `
   --vnet-name $VNet_Name `
   --subnet $Subnet_Name `
   --admin-username $Admin_User `
   --authentication-type ssh `
   --ssh-key-values $SSH_Key `
   --public-ip-address '""' `
   --nsg '""'
