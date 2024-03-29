variable "rg_name" {
  description = "Name of the resource group to deploy to"
  type        = string
  default     = "RG_train_terraform_mlops"
}

variable "location" {
  type        = string
  description = "Azure location to create resources in"
  default     = "GermanyWestCentral"
}

variable "storage_account_name" {
  description = "Name of existing storage account"
  type        = string
  default     = null
}

variable "container_name_prefix" {
  description = "Prefix of container name"
  type        = string
}
