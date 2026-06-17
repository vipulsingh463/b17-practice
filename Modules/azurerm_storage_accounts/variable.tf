variable "stg" {
  type = map(object({
    stg_name                 = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    rg_name                  = string
  }))
}
