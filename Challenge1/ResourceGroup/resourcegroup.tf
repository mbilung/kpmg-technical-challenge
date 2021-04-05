resource "azurerm_resource_group" "kpmg-challenge1" {
  name     = "resource-group-demo"
  location = var.location
  tags = {
      env = "resource-group-demo"
  }
}