resource "azurerm_mssql_server" "mssql_server" {
  for_each                     = var.mssql_database
  name                         = each.value.server_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  minimum_tls_version          = "1.2"

  tags = var.tags
}

resource "azurerm_mssql_database" "mssql_database" {
  for_each     = var.mssql_database
  name         = each.value.db_name
  server_id    = azurerm_mssql_server.mssql_server[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  tags = var.tags
}
