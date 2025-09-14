module "resource_group" {
  source         = "../../modules/azurerm_resource_group"
  resource_group = var.resource_group
  tags           = local.common_tags
}

module "container_registry" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_container_registry"
  acr        = var.acr
  tags       = local.common_tags
}

module "mssql_database" {
  depends_on     = [module.resource_group]
  source         = "../../modules/azurerm_mssql_database"
  mssql_database = var.mssql_database
  tags           = local.common_tags
}

module "kubernetes_cluster" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_kubernetes_cluster"
  aks        = var.aks
  tags       = local.common_tags
}
