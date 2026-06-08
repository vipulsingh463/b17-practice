variable "sql_database" {
  type = map(object({
    sql_db_name = string
    rg_name     = string
    location    = string
    server_name = string
    server_key  = string  # key reference to the sql server
  }))
}

variable "server_ids" {
  type        = map(string)
  description = "Map of SQL server keys to their IDs"
}
