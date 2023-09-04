# Variables, à ne pas modifier

variable "rg_name" {
    description = "Nom du resource group"
    type        = string
    default     = "alain-rg-terra"
}

variable "rg_location"{
    description = "region du rg"
    type        = string
    default     = "West Europe"
}
