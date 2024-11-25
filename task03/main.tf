data "azurerm_resource_group" "existing" {
  name = "cmtr-20750d88-mod3-rg"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = data.azurerm_resource_group.existing.location
  tags = {
    Creator = var.creator
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Creator = var.creator
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    Creator = var.creator
  }
}

resource "azurerm_subnet" "frontend" {
  name                 = var.subnet_names[0]
  resource_group_name  = data.azurerm_resource_group.existing.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "backend" {
  name                 = var.subnet_names[1]
  resource_group_name  = data.azurerm_resource_group.existing.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}