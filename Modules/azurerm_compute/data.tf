data "azurerm_subnet" "subnet" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "pip" {
  for_each            = var.vms
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}

# data "azurerm_key_vault" "key_vault" {
#   for_each = var.vms
#   name                = each.value.key_name
#   resource_group_name = each.value.rg_name
# }


# data "azurerm_key_vault_secret" "vm-username" {
#   for_each    = var.vms
#   name         = "vm-username"
#   key_vault_id = data.azurerm_key_vault.key_vault[each.key].id
# }

# data "azurerm_key_vault_secret" "vm-password" {
#   for_each    = var.vms
#   name         = "vm-password"
#   key_vault_id = data.azurerm_key_vault.key_vault[each.key].id
# }