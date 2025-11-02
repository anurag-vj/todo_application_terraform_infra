resource "azurerm_mssql_database" "mssql_database" {
  for_each     = var.mssql_database
  name         = each.value.db_name
  server_id    = data.azurerm_sql_server.sql_server.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  tags = var.tags
}
