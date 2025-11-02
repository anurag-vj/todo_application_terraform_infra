subscription_id = "bd7b142b-030a-46e3-8a31-579ffb9d2046"

resource_group = {
  "rg-dev-01" = {
    name     = "rg-dev-todoapp-01"
    location = "central india"
  }
}

acr = {
  "acr-dev-01" = {
    name                = "acrdevtodoapp01"
    resource_group_name = "rg-dev-todoapp-01"
    location            = "central india"
  }
}

mssql_server = {
  "mssql-server-01" = {
    server_name                  = "mssqldevtodoapp01"
    resource_group_name          = "rg-dev-todoapp-01"
    location                     = "central india"
    administrator_login          = "adminuser"
    administrator_login_password = "P@ssword@1234"
  }
}

mssql_database = {
  "mssql-database-01" = {
    db_name = "mssqldbdevtodoapp01"
  }
}

aks = {
  "aks-dev-01" = {
    name                = "aksdevtodoapp01"
    resource_group_name = "rg-dev-todoapp-01"
    location            = "central india"
    dns_prefix          = "aksdevtodoapp01"
  }
}
