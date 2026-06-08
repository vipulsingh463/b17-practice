resource "azurerm_mssql_database" "db" {
  for_each = var.sql_database

  name      = each.value.sql_db_name
  server_id = var.server_ids[each.value.server_key]

  sku_name = "Basic"
}