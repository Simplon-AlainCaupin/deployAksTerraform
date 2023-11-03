variable "network-config" {
  type         = object({
    name           = string
    location_name  = string
    vnet_name      = string
    subnet_name    = string
    )}
    default      = {
      name              = "briefterra-lain"
      location_name     = "west europe"
      vnet_name         = "briefterra-lain-vnet"
      subnet_name       = "briefterra-lain-subnet"
    }
}
