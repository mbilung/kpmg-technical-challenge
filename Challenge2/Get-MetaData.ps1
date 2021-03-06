# Solution to Challege#2, query metadata of an instance within Azure

# This script needs to be run through elevated PowerShell command prompt
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
function GetMetadata {
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
    pause
}

if (Get-InstalledModule -Name Az)
    {
        Write-Host "Az Module exists, You can authenticate to azure"
        GetMetadata        
    }
# Install Az module if not installed
else
    {
        Write-Host "Installing Az Module"
        Install-Module -Name Az -AllowClobber -SkipPublisherCheck
        Write-Host "Az Module Installed, Executing the script"
        GetMetadata
    }
