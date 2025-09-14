resource "azurerm_container_registry" "acr" {
  for_each            = var.acr
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku                 = "Premium"
  admin_enabled       = false

  tags = var.tags
}
