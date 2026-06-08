rgs = {
  rg1 = {
    rg_name  = "rg-web"
    location = "centralindia"
  }

  rg2 = {
    rg_name  = "rg-app"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    vnet_name     = "frontend-vnet"
    rg_name       = "rg-web"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]

    subnet = {
      subnet1 = {
        subnet_name = "frontend-subnet"
        cidr        = ["10.0.1.0/24"]
      }

      subnet2 = {
        subnet_name = "backend-subnet"
        cidr        = ["10.0.2.0/24"]
      }
    }
  }

  vnet2 = {
    vnet_name     = "backend-vnet"
    rg_name       = "rg-app"
    location      = "centralindia"
    address_space = ["10.1.0.0/16"]
  }
}

pips = {
  pip1 = {
    pip_name          = "frontend-pip"
    rg_name           = "rg-web"
    location          = "centralindia"
    allocation_method = "Static"
  }

  pip2 = {
    pip_name          = "backend-pip"
    rg_name           = "rg-web"
    location          = "centralindia"
    allocation_method = "Static"
  }

  pip3 = {
    pip_name          = "database-pip"
    rg_name           = "rg-web"
    location          = "centralindia"
    allocation_method = "Static"
  }
}

vms = {
  vm1 = {
    nic_name    = "frontend-nic"
    location    = "centralindia"
    rg_name     = "rg-web"
    pip_name    = "frontend-pip"
    subnet_name = "frontend-subnet"
    vnet_name   = "frontend-vnet"

    vm_name = "frontend-vm"
    size    = "Standard_D2s_v5"

    admin_username = "devopsadmin"
    admin_password = "devopsadmin@12345"
    key_name       = "kv-frontend"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }

  vm2 = {
    nic_name = "backend-nic"
    location = "centralindia"
    rg_name  = "rg-web"

    pip_name    = "backend-pip"
    subnet_name = "backend-subnet"
    vnet_name   = "frontend-vnet"

    vm_name = "backend-vm"
    size    = "Standard_D2s_v5"

    admin_username = "devopsadmin"
    admin_password = "devopsadmin@12345"
    key_name       = "kv-frontend"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

sql_server = {
  sql1 = {
    sql_name    = "sql-webapp-dev-001"
    rg_name     = "rg-web"
    location    = "centralindia"
    admin_login = "sqladmin"
    admin_pass  = "devopsadmin@12345"
  }
}

sql_database = {
  db1 = {
    sql_db_name = "webappdb"
    rg_name     = "rg-web"
    location    = "centralindia"
    server_name = "sql-webapp-dev"
    server_key  = "sql1"  # matches the sql_server key
  }
}
