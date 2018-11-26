resource "azurerm_storage_account" "az_storage" {
  name                      =  "${var.storage_name}"
  resource_group_name       =   "${var.azure_resource_group}"
  location                  =   "${var.location}"
  account_tier              =   "Standard"
  account_replication_type  =   "GRS"

  tags {
    team                    =  "${var.tag_team}"
  }
}