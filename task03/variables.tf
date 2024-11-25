variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "cmtr-20750d88-mod3-rg"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "cmtr20750d88sa1732540256"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "cmtr-20750d88-mod3-vnet"
}

variable "subnet_names" {
  description = "The names of the subnets"
  type        = list(string)
  default     = ["frontend", "backend"]
}

variable "creator" {
  description = "The creator tag"
  type        = string
  default     = "volodymyr_vasylkivskyi@epam.com"
}