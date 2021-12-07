# Create a resource group
resource "azurerm_resource_group" "example_rg" {
  name     = "example-resources-RG-1"
  location = "eastus"

  tags = {
    owner = "Amit Vashist"
    team  = "DevOps"
    test  = "DevOps-1"
  }

  lifecycle { 
    create_before_destroy = true 
  }
  
}



# Create a resource group
resource "azurerm_resource_group" "example_rg2" {
  name     = "example-resources-RG-2"
  location = "eastus"

  tags = {
    owner = "Amit Vashist"
    team  = "DevOps"
    test  = "DevOps-1"
  }

  lifecycle { 
    create_before_destroy = true 
  }
  
}
