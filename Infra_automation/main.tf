module "resource_group" {
    source = "../Modules/resource_group"

    rgs = var.rgs
}

module "networking" {
    source = "../Modules/azurerm_networking"
    depends_on = [ module.resource_group ]

    vnet = var.vnets
}

module "public_ip" {
    source = "../Modules/azurerm_public_ip"
    depends_on = [ module.resource_group ]

    pips = var.pips
}

module "compute" {
    source = "../Modules/azurerm_compute"
    depends_on = [ module.networking , module.public_ip , module.resource_group ]

    vms = var.vms
}


module "sql_server" {
    source = "../Modules/azurerm_sql_server"
    depends_on = [ module.resource_group , module.networking ]

    sql_server = var.sql_server
}

module "sql_db" {
    source = "../Modules/azurerm_sql_database"
    depends_on = [ module.sql_server ]

    sql_database = var.sql_database
    server_ids   = module.sql_server.sql_server_ids
}


