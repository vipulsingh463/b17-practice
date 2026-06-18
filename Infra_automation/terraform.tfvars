rgs = {
  rg1 = {
    rg_name  = "rg-web"
    location = "Central India"
  }
}

vnets = {
  vnet1 = {
  vnet_name = "frontend-vnet"
  location = "central india"
  cidr = ["10.0.0.0/16"]
  rg_name = "rg-web"
}

}

pips = {}

vms = {}

sql_server = {}

sql_database = {}
