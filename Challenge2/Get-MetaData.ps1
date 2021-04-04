# Solution to query metadata of an instance within Azure

# Authenticate to Azure
Connect-AzAccount

# select subscription
Write-Output "Enter SubscriptionName:"
$SubscriptionName = Read-Host
Select-AzSubscription -SubscriptionName $SubscriptionName

# Get a list of all resource groups
Get-AzResourceGroup | Format-Table

# Get a list of all resources in a resource group
Write-Output "Enter ResourceGroupName:"
$ResourceGroupName = Read-Host
Get-AzResource -ResourceGroupName $ResourceGroupName | Format-Table

# Show resource meta data
Write-Output "Enter Name of resource to view it's metadata:"
$Name = Read-Host

# Converting result to JSON
Get-AzResource -Name $Name | ConvertTo-Json