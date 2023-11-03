# Variables, à ne pas modifier

variable "resource_group_name" {
  description = "Nom du rg"
  type        = string
  default     = "briefterra-lain"
}

variable "vnet_name" {
  description = "Nom du vnet"
  type        = string
  default     = "briefterra-lain-vnet"
}

variable "subnet_name" {
  description = "Nom du subnet"
  type        = string
  default     = "briefterra-lain-subnet"
}
