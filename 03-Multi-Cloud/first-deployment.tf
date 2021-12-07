provider "azurerm" {
  #  subscription_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_id = "xxxxxxxxxxxxxxxxxxxxxx"
  # client_secret = "xxxxxxxxxxxxxxxxxxxxxx"
  #  tenant_id = "xxxxxxxxxxxxxxxxxxxxxx"

    features {}
}


# Create a resource group
resource "azurerm_resource_group" "example_rg" {
  name     = "example-resources-RG"
  location = "eastus"

  tags = {
    owner = "Amit Vashist"
    team  = "DevOps"
    test  = "DevOps-1"
  }
}



provider "aws" {
 # access_key = "Access Key"
 # secret_key = "Secret Key"
 region = "us-east-2"
}



resource "aws_instance" "web" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-Test-AV"
  }
}

