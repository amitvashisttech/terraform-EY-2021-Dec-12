# Create a resource group
resource "azurerm_resource_group" "frontend" {
  name     = "frontend-rg"
  location = "eastus"
  depends_on = [azurerm_resource_group.backend]

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
resource "azurerm_resource_group" "backend" {
  name     = "backend-rg"
  location = "eastus"


  tags = {
    owner = "Amit Vashist"
    team  = "DevOps"
    test  = "DevOps-1"
  }

  lifecycle { 
    prevent_destroy = false 
  }
  
}
