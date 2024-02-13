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

variable "username" {
  description = "Name of the user running terraform"
  type        = string
}
