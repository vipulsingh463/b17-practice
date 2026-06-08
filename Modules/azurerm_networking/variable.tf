variable "vnet" {
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
