Terraform script to create a 3 tier architecture which consists of

1. Two azure webapps, which will be used to host a UI and a Microservice
2. An azure sql server and a database, which will serve as our backend
3. And a resource group, which will be a logical partition of our azure resources and hold the webapp and the database

The webserver is configured to attach itself to a subnet and a DNS. The webapps will connect to the subnets and we will be accessing our webapps thorugh privatelink.azurewebsites.net
