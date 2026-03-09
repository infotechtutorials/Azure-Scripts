# Create an SSH Key Pair

ssh-keygen -t rsa -b 4096 -f $env:USERPROFILE\.ssh\"key_name"

# ---- Variables ----- #

$Resource_Group = "-------"
$VM_Name = "-------"
$Location = "------"
$Image = "Ubuntu2404"
$Size = "Standard_B2als"
$VNet_Name = "--------"
$Subnet_Name = "---------"
$Admin_User = "---------"
$SSH_Key = "$env:USERPROFILE\.ssh\--------"

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
