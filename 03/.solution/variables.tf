variable "rg_name" {
  description = "Name of the resource group to deploy to"
  type        = string
  default     = "RG_at-mlops"
}

variable "username" {
  description = "Name of the user running terraform"
  type        = string
}

