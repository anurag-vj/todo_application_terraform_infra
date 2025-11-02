variable "subscription_id" {
  description = "The subscription ID to deploy resources into."
  type        = string
}

variable "resource_group" {
  description = "A map of resource groups to create."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "acr" {
  description = "A map of Azure Container Registry configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
  }))
}

variable "mssql_server" {
  description = "A map of MSSQL Server configurations."
  type = map(object({
    server_name                  = string
    resource_group_name          = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
  }))
}

variable "mssql_database" {
  description = "A map of MSSQL Database configurations."
  type = map(object({
    db_name = string
  }))
}

variable "aks" {
  description = "A map of AKS cluster configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    dns_prefix          = string
  }))
}
