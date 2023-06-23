resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource

  name      = "rg-${terraform.workspace}-${var.generals.application}${each.value.name}${var.generals.location}-${each.value.number}"
  location  = var.generals.location
  tags      = var.tags
}
