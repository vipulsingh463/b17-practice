resource "azurerm_mssql_server" "sql" {
  for_each = var.sql_server

  name                         = each.value.sql_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"

  administrator_login          = each.value.admin_login
  administrator_login_password = each.value.admin_pass
}