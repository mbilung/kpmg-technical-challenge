This script should be run on elavated mode. It shows the meta data of the azure resource as entered by the user.

Pre-requisite: Az module should be installed

Account                   SubscriptionName TenantId                             Environment
-------                   ---------------- --------                             -----------
demo.demog@outlook.com    KPMG-Challenge   f5dbc8a7-xxxx-xxxx-xxxx-xxxxxxxx87 AzureCloud
Enter SubscriptionName:
KPMG-Challenge


ResourceGroupName   Location   ProvisioningState Tags  TagsTable
-----------------   --------   ----------------- ----  ---------
resource-group-demo westeurope Succeeded         {env} ...
NetworkWatcherRG    eastus     Succeeded
AS                  southindia Succeeded


Enter ResourceGroupName:
NetworkWatcherRG

Name                                                ResourceGroupName ResourceType                            Location
----                                                ----------------- ------------                            --------
kpmg-nonprod_disk1_36cb8711c53c4ba689acab928007af4c NETWORKWATCHERRG  Microsoft.Compute/disks                 centralus
kpmg-nonprod_key                                    NetworkWatcherRG  Microsoft.Compute/sshPublicKeys         centralus
kpmg-nonprod                                        NetworkWatcherRG  Microsoft.Compute/virtualMachines       centralus
kpmg-nonprod247                                     NetworkWatcherRG  Microsoft.Network/networkInterfaces     centralus
kpmg-nonprod-nsg                                    NetworkWatcherRG  Microsoft.Network/networkSecurityGroups centralus
NetworkWatcher_centralus                            NetworkWatcherRG  Microsoft.Network/networkWatchers       centralus
NetworkWatcher_eastus                               NetworkWatcherRG  Microsoft.Network/networkWatchers       eastus
NetworkWatcher_westeurope                           NetworkWatcherRG  Microsoft.Network/networkWatchers       westeu...
kpmg-nonprod-ip                                     NetworkWatcherRG  Microsoft.Network/publicIPAddresses     centralus
NetworkWatcherRG-vnet                               NetworkWatcherRG  Microsoft.Network/virtualNetworks       centralus

Enter Name of resource to view it's metadata:
kpmg-nonprod
  
ouput:

{
    "ResourceId":  "/subscriptions/aed184b9-8011-4de2-9c0b-xxxxxxxxxxxx/resourceGroups/NetworkWatcherRG/providers/Microsoft.Compute/virtualMachines/kpmg-nonprod",
    "Id":  "/subscriptions/aed184b9-8011-4de2-9c0b-xxxxxxxxxxxx/resourceGroups/NetworkWatcherRG/providers/Microsoft.Compute/virtualMachines/kpmg-nonprod",
    "Identity":  null,
    "Kind":  null,
    "Location":  "centralus",
    "ManagedBy":  null,
    "ResourceName":  "kpmg-nonprod",
    "Name":  "kpmg-nonprod",
    "ExtensionResourceName":  null,
    "ParentResource":  null,
    "Plan":  null,
    "Properties":  null,
    "ResourceGroupName":  "NetworkWatcherRG",
    "Type":  "Microsoft.Compute/virtualMachines",
    "ResourceType":  "Microsoft.Compute/virtualMachines",
    "ExtensionResourceType":  null,
    "Sku":  null,
    "Tags":  null,
    "TagsTable":  null,
    "SubscriptionId":  null,
    "CreatedTime":  null,
    "ChangedTime":  null,
    "ETag":  null
}
Press Enter to continue...:
