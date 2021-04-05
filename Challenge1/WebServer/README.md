Creates 2 WebApps
Deploy a VNet
Create the first subnet for the integration
Create the second subnet for the private endpoint
Deploy one App Service plan of type PremiumV2 or PremiumV3, required for Private Endpoint feature
Create the frontend web app with specific app settings to consume the private DNS zone
Connect the frontend web app to the integration subnet
Create the backend web app
Create the DNS private zone with the name of the private link zone for web app privatelink.azurewebsites.net
Link this zone to the VNet
Create the private endpoint for the backend web app in the endpoint subnet, and register DNS names (website and SCM) in the previously created DNS private zone