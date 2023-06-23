resource "azurerm_resource_group" "rg" {
  for_each = var.rg

  name      = "rg-${terraform.workspace}-${var.application}${each.value.name}${var.location}-${each.value.number}"
  location  = var.location
  tags      = var.tags
}
