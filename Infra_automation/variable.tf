# Resource Groups 

variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

# Virtual Networks 
variable "vnets" {
  type = map(object({
    vnet_name     = string
    rg_name       = string
    location      = string
    address_space = list(string)

    subnet = optional(map(object({
      subnet_name = string
      cidr        = list(string)
    })))
  }))
}


# Public Ips 
variable "pips" {
  type = map(object({
    pip_name          = string
    rg_name           = string
    location          = string
    allocation_method = string
  }))
}


# Virtual Linux Machine 
variable "vms" {
  type = map(object({
    nic_name       = string
    location       = string
    rg_name        = string
    pip_name       = string
    subnet_name    = string
    vnet_name      = string
    vm_name        = string
    size           = string
    admin_username = string
    admin_password = string
    key_name       = string

    source_image_reference = map(string)
  }))
}


# SQL _ server 
variable "sql_server" {
  type = map(object({
    sql_name    = string
    rg_name     = string
    location    = string
    admin_login = string
    admin_pass  = string
  }))
}

# Sql Database
variable "sql_database" {
  type = map(object({
    sql_db_name = string
    rg_name     = string
    location    = string
    server_name = string
    server_key  = string
  }))
}

# # STorag Accounts 
# variable "stg" {
#   type = map(object({
#     stg_name                 = string
#     location                 = string
#     account_tier             = string
#     account_replication_type = string
#     rg_name                  = string
#   }))
# }

