terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "1.38.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "18f8e7c5-a3db-4324-b49d-7ef07eace03f"
    }

  resource "azurerm_resource_group" "testResourceGroup" {
  name     = "testrg1"
  location = "West US"

 
}



  resource "azurerm_resource_group" "rohini" {
  name     = "testrg12"
  location = "West US"

 
}


resource "azurerm_storage_account" "testStorageAccount11" {
  name                     = "teststorageaccount11"
  resource_group_name      = azurerm_resource_group.testResourceGroup.name
  location                 = azurerm_resource_group.testResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Test"
  }
}
