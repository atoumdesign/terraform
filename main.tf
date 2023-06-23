resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource

  name      = "rg-${terraform.workspace}-${var.application}${each.value.name}${var.location}-${each.value.number}"
  location  = var.location
  tags      = var.tags
}
