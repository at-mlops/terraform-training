locals {
  default_storage_account_name = "atterraformvt5byn74"
  full_container_name          = substr(format("%s%s", var.container_name_prefix, random_string.random_part.result), 0, 12)
}
