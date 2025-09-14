resource "azurerm_user_assigned_identity" "managed_identity" {
  for_each            = var.managed_identities
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  tags = var.tags
}
