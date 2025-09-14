variable "mssql_database" {
  description = "A map of MSSQL Server configurations."
  type = map(object({
    server_name                  = string
    resource_group_name          = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
    db_name                      = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
