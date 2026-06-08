variable "sql_server" {
  type = map(object({
    sql_name    = string
    rg_name     = string
    location    = string
    admin_login = string
    admin_pass  = string
  }))
}
