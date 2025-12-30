# Configure Azure Provider
provider "azurerm" {
  # Version is optional
  # Terraform recommends to pin to a specific version of provide
  #version = "=2.35.0"
  #version = "~>2.35.0"
  features {}
  subscription_id = "fe496fba-d67f-421e-b553-8075cd0da353"
}

 
# Create a Azure Resource Group
resource "azurerm_resource_group" "aks-rg2" {
  name     = "aks-rg2-tf"
  location = "Sweden Central"

# Add Tags
 tags = {
   "environment" = "k8sdev"
   "demotag"     = "refreshtest"
 }

}

