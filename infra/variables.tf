variable "resource_group_name" {
  description = "Resource Group name where resources will be created."
  type        = string

  validation {
    condition     = substr(var.resource_group_name, 0, 3) == "rg-"
    error_message = "Resource Group name must start with \"rg-\"."
  }
}

variable "location" {
  description = "Region where resources will be created."
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "Unique name for the Container Registry."
  type        = string

  validation {
    condition     = substr(var.acr_name, 0, 2) == "cr"
    error_message = "Container Registry name must start with \"cr\"."
  }
}

variable "acr_sku" {
  description = "ACR plan utilized."
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard"], var.acr_sku)
    error_message = "Basic or Standard."
  }
}
