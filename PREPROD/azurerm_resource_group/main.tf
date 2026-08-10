resource "azurerm_resource_group" "rgs" {

  for_each = var.stones





















  name     = each.value.name
  location = each.value.location

}