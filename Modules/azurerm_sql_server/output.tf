output "sql_server_ids" {
  value = {
    for key, server in azurerm_mssql_server.sql : key => server.id
  }
  description = "Map of SQL server keys to their IDs"
}
