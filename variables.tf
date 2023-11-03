variable "network-config" {
  type         = object({
    name         = string
    location     = string
    vnet_name    = string
    subnet_name  = string
    )}
    default      = {
      name         = "briefterra-lain"
      location     = "west europe"
      vnet_name    = "briefterra-lain-vnet"
      subnet_name  = "briefterra-lain-subnet"
    }
}
